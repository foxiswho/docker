#!/bin/bash

rm -rf /etc/localtime \
&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "alias ls='ls -lhG --color=auto'" >> /root/.bashrc \
&& echo "alias ll='ls -lhG --color=auto'" >> /root/.bashrc \
&& . /root/.bashrc \
&& echo "post_max_size = 50M" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "upload_max_filesize = 50M" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "date.timezone = PRC" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "short_open_tag = On" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "cgi.fix_pathinfo=0" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "max_execution_time = 300" >> /usr/local/etc/php/conf.d/php.ini

apt-get update && apt-get install -y vim wget procps

docker-php-ext-enable bcmath bz2 calendar dba enchant exif ftp gd gettext gmp imap intl ldap mbstring mcrypt mysqli opcache pcntl pdo pdo_dblib pdo_mysql pdo_pgsql pgsql pspell shmop snmp soap sockets sysvmsg sysvsem sysvshm tidy wddx xmlrpc xsl zip xdebug redis
#rm -rf /var/lib/apt/lists/* \
#&& rm -rf /tmp/*