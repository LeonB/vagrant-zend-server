class timezone::config {

    file { "/etc/localtime":
        require => Package["tzdata"],
        source => "file:///usr/share/zoneinfo/${timezone::timezone}",
    }
}
