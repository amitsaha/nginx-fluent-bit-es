FROM centos:7
RUN yum install -y epel-release yum-utils && \
    yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum-config-manager --enable remi-php73 && \
    yum install -y php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd php-zip wget unzip
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN composer install
CMD php -f test.php
