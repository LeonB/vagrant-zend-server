class nullmailer(
  $package_name = params_lookup( 'package_name' ),
) inherits nullmailer::params {

  include nullmailer::package, nullmailer::config, nullmailer::service
}
