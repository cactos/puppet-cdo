class cactos_cdo::config inherits cactos_cdo{

  notify{"$module_name config stage":}

  # Save cdo init dump to db
  mysql::db { 'repo1':
    user     => "$mysql_cdo_username",
    password => "$mysql_cdo_pw",
    host     => 'localhost',
    grant    => ['ALL'],
    sql      => '/opt/cdo_init_dump.sql',
    import_timeout => 900,
    require => File['cdo_init_dump'],
  }


  # Create CDO config
  file { 'cdo-server.xml':
    ensure => file,
    path   => '/opt/RuntimeModelStorage.gtk.linux.x86_64/config/cdo-server.xml',
    owner  => root,
    group  => root,
    mode   => '0644',
    content => epp('cactos_cdo/cdo-server.xml'),
    require => Archive['cdo.zip'],
  }

}
