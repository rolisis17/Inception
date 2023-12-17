FROM debian:latest

# Install PHP and WordPress dependencies
RUN apt-get update && \
    apt-get install -y php-fpm php-mysql && \
    rm -rf /var/lib/apt/lists/*

# Copy your WordPress files and configurations
COPY wordpress /var/www/html

# Expose port
EXPOSE 9000

CMD ["php-fpm", "-F"]
