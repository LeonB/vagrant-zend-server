class nullmailer::package {

  	package { "${nullmailer::package_name}":
    ensure  => present,
    require => Exec['apt_update']
  }
}
