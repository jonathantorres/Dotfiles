# Local Environment
Setup for the local environment using Homebrew.

## NGINX
First, install nginx.
```bash
brew install nginx
```
After the installation is completed, these are the default settings.
- The document root is `/usr/local/var/www`
- The configuration file is located at `/usr/local/etc/nginx/nginx.conf`
- You can place more configuration files in `/usr/local/etc/nginx/servers` every configuration file in this folder it's loaded automatically.
- The default port is set to `8080`, this way it can run without `sudo`.

To start nginx, run this command, it will start nginx and restart it at login
```bash
brew services start nginx
```
If you don't want to run it with brew services, just run:
```bash
nginx
```
To test the configuration file, run:
```bash
nginx -t
```
To check the process running nginx, run:
```bash
ps aux | grep nginx
```
Restart nginx after making a change on the configuration
```bash
brew services restart nginx
```
To shut down nginx
```bash
brew services stop nginx
```

## MySQL
To install MySQL run:
```bash
brew install mysql
```
After the installation is completed, these are the default settings.
- MySQL is installed without a root password, If you want to secure it just run `mysql_secure_installation`
- By default, MySQL is only allowed to connect from `localhost`

To start mysql, run this command, it will start mysql and restart it at login
```bash
brew services start mysql
```
If you don't want to run it with brew services, just run:
```bash
mysql.server start
```
Restart mysql
```bash
brew services restart mysql
```
To shut down mysql
```bash
brew services stop mysql
```

## PHP
To install PHP, first you need the formulae for all the different versions of PHP.
```bash
brew tap homebrew/homebrew-php
```
To install PHP (in this case PHP 7.2) run:
```bash
brew install php72
```
After the installation is completed, these are the default settings.
- The php.ini file can be located at `/usr/local/etc/php/7.2/php.ini`.
- If you are having any issues with custom extension compiling make sure you are using the brew version of PHP, make sure that you place `/usr/local/bin` before `/usr/sbin` on your `PATH` like so: `PATH="/usr/local/bin:$PATH"`.
- PHP extensions will always be compiled against the brew version of PHP, if you want to compile an extension on the system's PHP (the one that comes by default in OS X) make sure that you install them using `--without-homebrew-php`.
- To swap the PHP version you use on the command line, add the following to `~/.zshrc`: `export PATH="$(brew --prefix homebrew/php/php72)/bin:$PATH"`.
- PHP FPM comes installed by default, the control script is located at `/usr/local/opt/php72/sbin/php72-fpm`.
- To ensure that the brew version of PHP FPM is going to be used, make sure that `/usr/local/sbin` is before `/usr/sbin` in your `PATH`: `PATH="/usr/local/sbin:$PATH"`

To start php-fpm, run this command, it will start php-fpm and restart it at login
```bash
brew services start php72
```
Restart php-fpm
```bash
brew services restart php72
```
To shut down php-fpm
```bash
brew services stop php72
```

## Brew services
This very useful utility lets you start, restart or stop any services installed with homebrew.

To list any services running, run:
```bash
brew services list
```





