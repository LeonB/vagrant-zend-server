class zend_server::config {

	# Omdat augeas (nog) niet goed werkte
	exec { '/usr/local/zend/gui/application/data/zend-server-user.ini':
		command => '/bin/sed -i \'s/marketing = "1"/marketing = "0"/g\' /usr/local/zend/gui/application/data/zend-server-user.ini',
		unless  => '/bin/grep "marketing = \"0\"" /usr/local/zend/gui/application/data/zend-server-user.ini',
	}

	# Omdat augeas (nog) niet goed werkte
	exec { '/usr/local/zend/gui/lighttpd/etc/lighttpd.conf':
		command => '/bin/sed -i \'s/$HTTP\["remoteip"\] !~ "127.0.0.1"/$HTTP["remoteip"] !~ "127.0.0.1|192.168.*|10.76.*|10.0.*"/g\' /usr/local/zend/gui/lighttpd/etc/lighttpd.conf',
		onlyif  => '/bin/grep "$HTTP\[\"remoteip\"] \!~ \"127.0.0.1\"" /usr/local/zend/gui/lighttpd/etc/lighttpd.conf',
	}

	file { '/usr/local/zend/etc/ext.d/ldap.ini':
		ensure => present,
		owner  => 'root',
		group  => 'zend',
		mode   => 0664,
	}

	file { '/var/log/apache2/':
		group   => 'zend',
		mode    => 0664,
		recurse => true
	}

}
