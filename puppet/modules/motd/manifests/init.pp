class motd {
	file { '/etc/motd.tail':
		owner   => 'root',
		group   => 'root',
	    mode    => 0644,
	    source  => "puppet:///modules/motd/etc/motd.tail",
	}
}
