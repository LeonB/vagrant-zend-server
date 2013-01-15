class php {

	file { '/usr/local/zend/etc/conf.d/php_custom.ini':
		content => template("php/php_custom.ini.erb"),
		ensure  => present,
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
		require => Class['zend_server']
	}

}
