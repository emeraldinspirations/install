![Logo of the project](http://vps56132.vps.ovh.ca/logo.gitHub.png)

# How to install / configure apache2
> Part of emeraldinspirations's - [install](https://github.com/emeraldinspirations/install)
 project

## Installing / Getting started

*Documentation to be included*

## Configure Wildcard Subdomain

Instructions adapted from the article [Setting up a wildcard Apache virtual host + a wildcard DNS](http://brunodbo.ca/blog/2013/04/26/setting-up-wildcard-apache-virtual-host-wildcard-dns) by [Bruno De Bondt](http://brunodbo.ca/)

### Set up VirtualHost

#### Enable Apache's vhost_alias module

```shell
sudo a2enmod vhost_alias
```

Note: Skipping this step will produce an error

```
Job for apache2.service failed because the control process exited with error code.
See "systemctl status apache2.service" and "journalctl -xe" for details.

journalctl | tail
...
Invalid command 'VirtualDocumentRoot', perhaps misspelled or defined by a module not included in the server configuration
```

#### Create wildcard virtual host
Create file `/etc/apache2/sites-available/subdomain.dev.conf`
```apacheconf
<VirtualHost *:80>
  ServerAlias localhost *.dev #wildcard catch all
  VirtualDocumentRoot /path/to/your/workspace/%1/public
  UseCanonicalName Off
  <Directory "path/to/your/workspace">
    Options FollowSymLinks
    AllowOverride All
    Order allow,deny
    Allow from all
    Require all granted
  </Directory>
</VirtualHost>
```

#### Enable new wildcard virtual host configuration
This instruction was incorrect in the original source.  See [Re: a2ensite - Error! Site does not exist](https://ubuntuforums.org/showthread.php?t=2100563&s=e12377e2f2a2f4dd7cbf08b028b8068d&p=12433955#post12433955) by [volkswagner](https://ubuntuforums.org/member.php?u=288711)

> You should not need to point a2ensite at the entire directory tree, Apache2 will specifically look in /etc/apache2/sites-available.

```shell
sudo a2ensite subdomain.dev.conf
```

#### Reload Apache configuration
```shell
sudo service apache2 reload
```

### Install Dnsmasq

```shell
sudo apt-get install dnsmasq
```

#### Dissable dnsmasq from NetworkManager
> Since Ubuntu's NetworkManager uses dnsmasq, and since that messes things up a little for us:

Open file `/etc/NetworkManager/NetworkManager.conf`, comment line:
```apacheconf
# dns=dnsmasq
```

#### Restart NetworkManager
```shell
sudo restart network-manager
```

#### Config dnsmasq to listen to local DNS queries

Append to file `/etc/dnsmasq.conf`:
```apacheconf
listen-address=127.0.0.1
```

#### Config dnsmasq to resolve requests for `*.dev` domains

Create file `/etc/dnsmasq.d/dev`:
```apacheconf
address=/dev/127.0.0.1
```

#### Restart dnsmasq
```shell
sudo /etc/init.d/dnsmasq restart
```

### Have localhost resolve domain names

Edit file `/etc/dhcp/dhclient.conf`, uncomment line:
```apacheconf
prepend domain-name-servers 127.0.0.1;
```

#### Refresh local DNS
```shell
sudo dhclient
```

### Done

`/path/to/your/workspace/drupal/public` is now accessible http://drupal.dev
