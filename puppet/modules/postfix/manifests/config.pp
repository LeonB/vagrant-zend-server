class postfix::config {

	file { '/etc/postfix/main.cf':
		ensure => present,
		content => template("postfix/main.cf.erb"),
    	require => Class['postfix::package'],
    	notify => Class['postfix::service']
	}

   postfix::hash { "/etc/postfix/sasl_passwd":
     ensure => present,
     content => template("postfix/sasl_passwd.erb")
   }
}
