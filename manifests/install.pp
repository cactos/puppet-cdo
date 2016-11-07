class cactos_cdo::install inherits cactos_cdo{

  notify{"$module_name install stage":}

  # Add PPA to install JDK
  include apt
  apt::ppa { 'ppa:openjdk-r/ppa': }

  # Install JDK
  package{'openjdk-8-jre':
    ensure => installed,
    require => Apt::Ppa['ppa:openjdk-r/ppa']
  }
  # Install zip
  ensure_packages(['zip'])

  # my.cnf options for innoDB
  $override_options = {
    'mysqld' => {
      'default_storage_engine'=>'InnoDB',
      'innodb_large_prefix' => 'on',
      'innodb_file_format' => 'barracuda',
      'innodb_file_per_table' => '1',
      'lower_case_table_names' => '1',
    }
  }

  # Download initial sql dump for cdo from puppet
  file { 'cdo_init_dump':
    ensure => file,
    path => '/opt/cdo_init_dump.sql',
    source => 'puppet:///modules/cactos_cdo/cdo_init_dump.sql'
  }
  # Install and configure MYSQL
  class{'::mysql::server':
    root_password           => "$mysql_root_pw",
    remove_default_accounts => true,
    override_options        => $override_options
  }


  # Download CDO from KIT
  archive { "cdo.zip":
    path          => "/opt/cdo.zip",
    source        => "https://sdqweb.ipd.kit.edu/eclipse/cactos/runtimemodelstorage/binary_nightly/RuntimeModelStorage.gtk.linux.x86_64.zip",
    extract       => true,
    extract_path  => '/opt',
    creates       => '/opt/RuntimeModelStorage.gtk.linux.x86_64/',
    cleanup       => false,
    require       => Package['zip'],
  }

}
