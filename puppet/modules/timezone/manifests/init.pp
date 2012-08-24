class timezone(
  $package_name = params_lookup( 'package_name' ),
  $timezone = params_lookup( 'timezone' ),
) inherits timezone::params {

  include timezone::package, timezone::config
}
