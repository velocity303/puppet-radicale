class radicale (
  $package      = $::radicale::params::package,
  $app_config   = $::radicale::params::app_config,
  $log_config   = $::radicale::params::log_config,
  $service_name = $::radicale::params::service_name,
) inherits radicale::params {
  include radicale::install
  include radicale::config
  include radicale::service
}
