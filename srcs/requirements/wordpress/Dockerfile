FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install -y curl php7.4-fpm php-mysql php-curl php-gd php-mbstring php-xml \
	php-xmlrpc php-soap php-intl php-zip mariadb-client && \
    rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN mkdir -p /run/php/ && chmod 755 /run/php/

RUN chmod +x wp-cli.phar
RUN whereis php-fpm

RUN mv wp-cli.phar /usr/local/bin/wp

RUN sed -i 's#listen = /run/php/php7.4-fpm.sock#listen = 9000#g' /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/script.sh .

RUN chmod +x script.sh

EXPOSE 9000

ENTRYPOINT ["./script.sh", "/usr/sbin/php-fpm7.4", "-F", "-R"]
