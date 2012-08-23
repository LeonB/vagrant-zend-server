class unattended_upgrades(
  $package_name = params_lookup( 'package_name' ),
) inherits unattended_upgrades::params {

  include unattended_upgrades::package, unattended_upgrades::config
}
