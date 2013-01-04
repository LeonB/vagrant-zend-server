class php {

	file { '/etc/php5/fpm/conf.d/php_custom.ini':
		content => template("php/php_custom.ini.erb"),
		ensure  => present,
		owner   => 'root',
		group   => 'root',
		mode    => '0644'
	}

}
