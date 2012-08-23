# Class: zend_server::params
#
# This class defines default parameters used by the main module class zend_server
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to zend_server class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class zend_server::params {

  ### Application related parameters

  $package_name = $::operatingsystem ? {
    default => 'zend-server-ce-php-5.3',
  }
}
