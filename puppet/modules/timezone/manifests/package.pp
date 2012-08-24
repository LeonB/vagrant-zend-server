class timezone::package {

	package  { $timezone::package_name:
		ensure => present,
		require => Exec['apt_update']
	}
}
