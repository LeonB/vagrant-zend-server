# http://projects.puppetlabs.com/projects/1/wiki/debian_preseed_patterns
# echo "The message" | mail -s "The subject" --append=FROM:sensible@domain.tld user@domain.tld

class postfix(
  $package_name = params_lookup( 'package_name' ),
) inherits postfix::params {

  include postfix::package, postfix::config, postfix::service
}
