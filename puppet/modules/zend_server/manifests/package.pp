class zend_server::package {

	apt::source { "zend_server":
	  location          => "http://repos.zend.com/zend-server/deb/",
	  release           => "server",
	  repos             => "non-free",
	  key 							=> "F7D2C623",
	  # key_server				=> 'pgp.mit.edu'
	  # key_source        => "http://repos.zend.com/zend.key",
	  include_src       => false
	}

	package  { $zend_server::package_name:
		ensure => present,
		require => Exec['apt_update']
	}

	package  { ['phpmyadmin-zend-server', 'php5-suhosin']:
		ensure => present,
		require => [Exec['apt_update'], Package[$zend_server::package_name]]
	}
}
