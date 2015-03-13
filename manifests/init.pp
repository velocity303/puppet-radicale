class radicale (
  $package        = $::radicale::params::package,
  $app_config     = $::radicale::params::app_config,
  $log_config     = $::radicale::params::log_config,
  $service_name   = $::radicale::params::service_name,
  $service_config = $::radicale::params::service_config,
  $port           = $::radicale::params::port,
  $ssl_enabled    = $::radicale::params::ssl_enabled,
  $cert_file      = $::radicale::params::cert_file,
  $cert_key       = $::radicale::params::cert_key,
  $auth_method    = $::radicale::params::auth_method,
) inherits radicale::params {
  include radicale::install
  include radicale::config
  include radicale::service
}
