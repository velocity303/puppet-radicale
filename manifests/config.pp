class radicale::config {
  require radicale::install
  file { $::radicale::app_config:
    ensure  => present,
    content => template("${module_name}/config.erb"),
    mode    => '0644',
    notify  => Service[$::radicale::service_name],
  }   
  file { $::radicale::log_config:
    ensure  => present,
    content => template("${module_name}/logging.erb"),
    mode    => '0644',
    notify  => Service[$::radicale::service_name],
  }
  file { $::radicale::service_config:
    ensure  => present,
    content => template("${module_name}/service.erb"),
    mode    => '0644',
    notify  => Service[$::radicale::service_name],
  }
}
