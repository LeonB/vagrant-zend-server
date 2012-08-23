class zend_server::service {
	service { 'zend-server':
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['zend_server::package'],
		subscribe  => Exec['/usr/local/zend/gui/lighttpd/etc/lighttpd.conf'],
	}
}
