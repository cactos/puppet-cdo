class cactos_cdo::service inherits cactos_cdo{

  notify{"$module_name service stage":}

  #create cdo service 
  service { 'cdo-service':
    require    => File['cdo-server.xml'],
    ensure     => running,
    start      => "nohup /opt/RuntimeModelStorage.gtk.linux.x86_64/RuntimeModelStorage 2>&1 >> /var/log/cdo.log &",
    stop       => "/usr/bin/pkill -f RuntimeModelStorage",
    pattern    => "RuntimeModelStorage", #TODO improve pattern to avoid ambiguity
    provider   => 'base',
  }
}
