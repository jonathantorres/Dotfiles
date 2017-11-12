# Ubuntu Server
Basic installation and setup for an Ubuntu 14.04 x64 server in Vultr.

### Install PHP7
```bash
sudo apt-get install python-software-properties software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.0
```

### Install PHP7 extensions
```bash
sudo apt-get install php7.0-mysql
sudo apt-get install php7.0-fpm
sudo apt-get install php7.0-curl
sudo apt-get install php7.0-zip
sudo apt-get install php7.0-mbstring
sudo apt-get install php7.0-xml
```

### Install MySQL
This will install whatever mysql version is on `apt-get`, to install mysql 5.7, please check out [this](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-14-04) guide.
```bash
sudo apt-get update
sudo apt-get install mysql-server
sudo mysql_secure_installation
sudo mysql_install_db
```

### Install nginx
The `-t` flag checks the config file location. Make changes there.
```bash
sudo apt-get install nginx
sudo nginx -t
```

### Install git
```bash
sudo apt-get install git
```

### Install nodejs
```bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
```

### Install composer
```bash
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
```

### Install yarn
```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
```

### SSH keys
Generates a new SSH key on the server if there's none available.
```bash
ssh-keygen -t rsa -C "email@email.com"
```
