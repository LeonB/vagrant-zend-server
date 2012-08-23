# Class: unattended_upgrades::params
#
# This class defines default parameters used by the main module class unattended_upgrades
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to unattended_upgrades class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class unattended_upgrades::params {

  ### Application related parameters

  $package_name = $::operatingsystem ? {
    default => 'unattended-upgrades',
  }
}
