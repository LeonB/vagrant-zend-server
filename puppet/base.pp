# make sure everything is up to date

package  { 'language-pack-nl':
	ensure => present,
	require => Exec['apt_update']
}

# class { 'augeas': }
class { 'motd': }
class { 'unattended_upgrades': }
class { 'zend_server': }
