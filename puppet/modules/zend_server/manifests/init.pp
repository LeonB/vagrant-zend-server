class zend_server(
  $package_name = params_lookup( 'package_name' ),
) inherits zend_server::params {

  include zend_server::package, zend_server::config, zend_server::service
}
