## Who is this for? ##
This Vagrant project is made for developers who want an easy to use LAMP stack on their computer.

It uses the Zend Community server from the zend repos. The Zend Server is an easy to use webinterface to Apache/PHP so even inexperienced users can easily view the apache logs, change php ini values and debug their code.

## What does it contain? ##
It's based on the precise32 box from www.vagrantbox.es and it contains the following extra software:

* zend-server-ce-php-5.3
* phpmyadmin-zend-server
* msmtp

## How to use it ##
* clone the project
* enter the directory and do a `vagrant up`

The admin interface is on http://localhost:10081<br />
The webserver can be accessed on http://localhost:8080

`~/Public` (based on the Ubuntu desktop homedirectory layout) is mounted to the VM's `/var/www`.
There you can place your files so they are accessible on http://localhost:8080
