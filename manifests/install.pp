class radicale::install {
  package { $::radicale::package:
    ensure => present,
  }
}
