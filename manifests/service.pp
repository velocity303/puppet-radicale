class radicale::service {
  service { $::radicale::service_name:
    ensure  => running,
    require => Package[$::radicale::package],
  }
}
