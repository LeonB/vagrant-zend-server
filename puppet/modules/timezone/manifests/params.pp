# Class: timezone::params
#
# This class defines default parameters used by the main module class timezone
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to timezone class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class timezone::params {

  ### Application related parameters

  $package_name = $::operatingsystem ? {
    default => 'tzdata',
  }

  $timezone = $::operatingsystem ? {
    default => 'Europe/Amsterdam',
  }
}
