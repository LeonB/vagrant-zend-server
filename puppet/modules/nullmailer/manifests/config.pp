class nullmailer::config {

	file { '/etc/nullmailer/remotes':
		require => Class['nullmailer::package']
	}

}
