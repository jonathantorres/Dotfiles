# Local Environment
Setup for the local environment on MacOS.

## NGINX
nginx requires PCRE (Perl compatible Regular Expressions), download from https://www.pcre.org/ and make sure that you use the old library (version 8.43) and extract to your Desktop.

Now it's time to install nginx, download the source files from nginx.org and extract them to your Desktop. nginx will install on whatever directory is set in the `prefix` option in it's `./configure` script, by default it's `/usr/local/nginx`. Make sure to run the configuration script specifying the location of the PCRE sources
```bash
cd ~/Desktop/nginx-1.20.2/
./configure --with-pcre=../pcre-8.43/
```

Once the configuration is successful, finish installing nginx with `make`
```bash
sudo make
sudo make install
```

Create a symlink to `/usr/local/bin`. This should be in your `PATH`
```bash
ln -s /usr/local/nginx/sbin/nginx /usr/local/bin/
```

## NGINX Administration
After the installation is completed, these are the default settings.
- The document root is `/usr/local/nginx/html`
- The configuration file is located at `/usr/local/nginx/conf/nginx.conf`

Start nginx
```bash
sudo nginx
```

Quit nginx
```bash
sudo nginx -s quit
```

Reload nginx's configuration files
```bash
sudo nginx -s reload
```

Restart nginx
```bash
sudo nginx -s quit
sudo nginx
```

## MySQL
Download the pre-compiled binary files from https://downloads.mysql.com/archives/community, make sure to select `8.0.15` as the version, `macOS` as the Operating System, the format should be "Compressed TAR Archive". Extract the files to `/usr/local/mysql`

Create symlinks to `/usr/local/bin`. This should be in your `PATH`
```bash
ln -s /usr/local/mysql/bin/mysqld /usr/local/bin/
ln -s /usr/local/mysql/bin/mysql /usr/local/bin/
ln -s /usr/local/mysql/support-files/mysql.server /usr/local/bin/
```

Now, it's time to setup the server. Run the mysqld daemon with the initialization flag with your username. This will create the data directory, setup a temporary password for root, make sure to write this down. The second line is to run the SSL setup
```bash
mysqld --initialize --user=jonathantorres
/usr/local/mysql/bin/mysql_ssl_rsa_setup
```

Since the server is now initialized, it's time to start it for the first time.
```bash
/usr/local/mysql/bin/mysqld_safe --user=jonathantorres
```

Now connect to it with the temporary password. After entering the password you should be able to enter the MySql monitor
```bash
mysql -u root -p
```

It's time to remove this temporary password and setup your default account. We'll use the root user with no password.
```bash
ALTER USER 'root'@'localhost' IDENTIFIED BY '';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
```

By default, the server starts using an unix socket, a file in `/tmp/mysql.sock`. We want the server to accept connections using the local address 127.0.0.1. Save the following configuration in a file located at: `/usr/local/mysql/etc/my.cnf`
```
[mysqld]
bind-address=127.0.0.1
```

Once this is done, restart the server with the command
```bash
mysql.server restart
```

## MySQL Administration
The following commands are used to start, stop, reload configuration and restart the server
```bash
mysql.server start
mysql.server stop
mysql.server restart
mysql.server reload
```

## PHP
Download sources from php.net, and extract to your Desktop. Run the configuration with php-fpm and mysqli
```bash
./configure --enable-fpm --with-mysqli
```

Once the configuration is successful, finish installing PHP with `make`
```bash
make
sudo make install
```

Move configuration files to the right places
```bash
sudo cp php.ini-development /usr/local/php/php.ini
sudo cp /usr/local/etc/php-fpm.conf.default /usr/local/etc/php-fpm.conf
sudo cp /usr/local/etc/php-fpm.d/www.conf.default /usr/local/etc/php-fpm.d/www.conf
sudo cp sapi/fpm/php-fpm /usr/local/bin
```

## PHP-FPM Administration
Start the php-fpm daemon
```bash
php-fpm
```

## Valgrind
Download sources from https://valgrind.org, and extract to your Desktop. Configure the installation with `./configure`
```bash
./configure --prefix=/usr/local/valgrind
```

Next, compile the sources and install with `make`
```bash
make
sudo make install
```

## VIM
Clone the source code from https://github.com/vim/vim, and extract to your Desktop or home directory. Configure the installation with `./configure`. By default, it will install the binary on `/usr/local/bin`
```bash
./configure --enable-pythoninterp=yes
```

Next, compile the sources and install with `make`
```bash
sudo make install
```
