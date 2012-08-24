class nullmailer::service {
	service { 'nullmailer':
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['nullmailer::package'],
		subscribe  => File['/etc/nullmailer/remotes'],
	}
}
