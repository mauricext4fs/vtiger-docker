FROM mauricext4fs/docker-php7-alpine-imagic-openssl
EXPOSE 80 3306

#FROM ubuntu:quantal
#MAINTAINER Fernando Mayo <fernando@tutum.co>

# Install packages
#RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install supervisor git pwgen mysql-server libjpeg libpng-dev libxml2-dev openssl-dev imagemagick-dev wget rsync

# Add image configuration and scripts
#ADD start-apache2.sh /start-apache2.sh
#ADD start-mysqld.sh /start-mysqld.sh
#ADD run.sh /run.sh
#RUN chmod 755 /*.sh
#ADD my.cnf /etc/mysql/conf.d/my.cnf
#ADD supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf
#ADD supervisord-mysqld.conf /etc/supervisor/conf.d/supervisord-mysqld.conf

# Add MySQL utils
#ADD create_mysql_admin_user.sh /create_mysql_admin_user.sh
#ADD import_sql.sh /import_sql.sh
#ADD create_db.sh /create_db.sh
#RUN chmod 755 /*.sh

# Configure /app folder with sample app
#RUN git clone https://github.com/fermayo/hello-world-lamp.git /app
#RUN mkdir -p /app && rm -fr /var/www && ln -s /app /var/www
#RUN docker-php-ext-install mysqli pdo pdo_mysql bcmath dom xml simplexml calendar exif  hash iconv json mbstring posix sockets tokenizer

