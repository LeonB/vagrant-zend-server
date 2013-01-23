# https://github.com/uggedal/puppet-module-debian/blob/master/manifests/alternatives.pp

define debian::alternatives::add($link, $path, $priority) {
  exec { "/usr/sbin/update-alternatives --install $link $name $path $priority":
    unless => "/bin/grep $path /var/lib/dpkg/alternatives/$name"
  }
}

define debian::alternatives::set($path) {
  exec { "/usr/sbin/update-alternatives --set $name $path":
    unless => "/bin/sh -c '[ -L /etc/alternatives/$name ] && [ /etc/alternatives/$name -ef $path ]'"
  }
}
