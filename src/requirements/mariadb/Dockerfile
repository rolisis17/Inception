FROM debian:latest

# Install MariaDB
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# Copy your MariaDB configurations
COPY mariadb.cnf /etc/mysql/my.cnf

# Expose port
EXPOSE 3306

CMD ["mysqld"]
