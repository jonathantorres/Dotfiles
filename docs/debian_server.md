# Debian Server
Basic installation and setup for an Debian 10 x64 server in Vultr.

### Create user for administrative tasks
Debian sometimes comes with `sudo` installed, try to install it
```bash
$ apt install sudo
```

Create new user, `jt` is the username, follow the prompts to create your password
```bash
$ adduser jt
```

Add the user to the sudo group
```bash
$ usermod -aG sudo jt
```

Test the new user, switch to it
```bash
$ su - jt
```

Verify you are the new user with `whoami`, then test sudo access with `sudo whoami`, which should return root. Now you are done creating the user for administrative tasks
```bash
$ whoami
jt

$ sudo whoami
[sudo] password for jt:
root
```

### Disable root access from SSH
Since we have created our user for administrative tasks, we should disable root access to the server. View the contents of the SSH configuration file using the following command:
```bash
cat /etc/ssh/sshd_config
```

Look for the line:
```bash
#PermitRootLogin no
```

Un-comment the line using nano or any other editor. Then restart the SSH service for the changes to take effect. After this, log out of the server and try to login as root, it shouldn't work
```bash
sudo systemctl restart ssh.service
```
- More details on disabling root login: https://www.vultr.com/docs/disable-or-restrict-root-login-via-ssh-on-linux
- Here's an article to change the password of the root user: https://www.vultr.com/docs/boot-into-single-user-mode-reset-root-password

### Install nginx
The `-t` flag checks the config file location. Make changes there.
```bash
sudo apt-get install nginx
sudo /usr/sbin/nginx -t
```

### Install PHP7
```bash
sudo apt-get install php7.3 --no-install-recommends
```

### Install PHP7 extensions
```bash
sudo apt-get install php7.3-mysql
sudo apt-get install php7.3-fpm
sudo apt-get install php7.3-curl
sudo apt-get install php7.3-zip
sudo apt-get install php7.3-mbstring
sudo apt-get install php7.3-xml
```

### Install MariaDB
```bash
sudo apt-get update
sudo apt-get install mariadb-server --no-install-recommends
sudo mysql_secure_installation
```

### Administrator of MariaDB
Once MariaDB is installed, setup your user for administration tasks, first login into mysql:
```bash
sudo mysql
```

And create your admin user with root privileges:
```bash
GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

Also, create a web user for your webapps, with permissions to SELECT, UPDATE, DELETE and INSERT table rows. This user shouldn't be able to create/delete databases or tables
```bash
CREATE USER 'web'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, UPDATE, INSERT, DELETE ON *.* TO 'web'@'localhost';
```

Test that everything is ok with MariaDB with:
```bash
sudo mysqladmin version
sudo systemctl status mariadb.service
```

### Install git
```bash
sudo apt-get install git
```

### Install nodejs
```bash
sudo apt-get install nodejs
sudo apt-get install npm --no-install-recommends
```

### Install composer
```bash
sudo apt-get install composer --no-install-recommends
```

### SSH keys
Generates a new SSH key on the server if there's none available.
```bash
ssh-keygen -t rsa -b 4096 -C "email@email.com"
```
