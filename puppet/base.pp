# make sure everything is up to date

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
