## Who is this for? ##
This Vagrant project is made for developers who want an easy to use LAMP stack on their computer.

It uses the Zend Community server from the zend repos. The Zend Server is an easy to use webinterface to Apache/PHP so even inexperienced users can easily view the apache logs, change php ini values and debug their code.

![Zend Server admin screenshot](https://github.com/LeonB/vagrant-zend-server/raw/master/zend-server-admin.jpg)

## What does it contain? ##
It's based on the precise32 box from www.vagrantbox.es and it contains the following extra software:

* zend-server-ce-php-5.3
* phpmyadmin-zend-server
* postfix

## How to use it ##
* clone the project
* edit Vagrantfile and edit the puppet.facter variables
* enter the directory and do a `vagrant up`

The admin interface is on http://localhost:10081 or https://localhost:10082<br />
The webserver can be accessed on http://localhost:8080.

The mysql port on the Vagrant instance is redirected to localhost:3306 (so you can easily use MySQL workbench or something). If you already have MySQL running on you local host machine this could give some problems.

`~/Public` (based on the Ubuntu desktop homedirectory layout) is mounted to the VM's `/var/www`.
There you can place your files so they are accessible on http://localhost:8080

phpmyadmin can be accessed on http://localhost:10081/phpmyadmin

The default mysql password is empty so you have to set in. Login via ssh: `vagrant ssh` and set the password:

``` bash
mysqladmin -u root password mYSupAhSecretPaszW0rD
```

## Tips ##

Quicly changing the package mirrors (in this case from us to nl):

```
sudo sed 's@us.archive.ubuntu.com@nl.archive.ubuntu.com@' -i /etc/apt/sources.list
```
