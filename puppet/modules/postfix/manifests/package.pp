class postfix::package {

	package  { $postfix::package_name:
		ensure => present,
		require => Exec['apt_update']
	}
}
