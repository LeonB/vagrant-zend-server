class aliases::config {
	# Pull down the main aliases file
	file { "/etc/aliases":
		owner	=> 'root',
		group	=> 'root',
		content => template("aliases/aliases.erb"),
	}

	# Rebuild the database, but only when the file changes
	exec { newaliases:
		path        => ["/usr/bin", "/usr/sbin"],
		subscribe   => File["/etc/aliases"],
		refreshonly => true,
		require     => Class['Postfix'],
	}
}
