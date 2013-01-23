package  { 'language-pack-nl':
	ensure => present,
	require => Exec['apt_update']
}

class { 'motd': }
class { 'timezone': }
class { 'aliases': }
class { 'unattended_upgrades': }
class { 'zend_server': }
class { 'php': }

if $::relayhost {
	class { 'postfix': }
}

# iptables { "route 8080 to 80":
#   proto => "tcp",
#   table => "nat",
#   chain => "PREROUTING",
#   jump => "REDIRECT",
#   dport       => "8080",
#   toports  => "80",
# }

iptables { "route 8080 to 80 for loopback device":
	proto   => "tcp",
	table   => "nat",
	chain   => "OUTPUT",
	jump    => "REDIRECT",
	dport   => "8080",
	toports => "80",
}

import 'alternatives' # https://github.com/uggedal/puppet-module-debian

debian::alternatives::add { "php":
	link => "/usr/bin/php",
	path => "/usr/local/zend/bin/php",
	priority => 1,
}

debian::alternatives::set { "php":
	path => "/usr/local/zend/bin/php",
}
