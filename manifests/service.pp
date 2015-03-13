class radicale::service {
  service { $::radicale::service_name:
    ensure  => running,
    enable  => true,
    require => Package[$::radicale::package],
  }
}
