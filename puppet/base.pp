package  { 'language-pack-nl':
	ensure => present,
}

# class { 'augeas': }
class { 'motd': }
class { 'unattended_upgrades': }
class { 'zend_server': }
