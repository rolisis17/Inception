FROM debian:bullseye

# Install MariaDB
RUN apt-get -y update && apt-get -y upgrade
    
RUN apt-get -y install mariadb-server &&\
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /var/run/mysqld && \
    chown -R mysql:mysql /var/run/mysqld

# Copy your MariaDB configurations
# COPY mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY script.sh .
COPY init.sql .
RUN chmod 777 ./script.sh

RUN mysql_install_db
# Expose port
EXPOSE 3306

ENTRYPOINT [ "./script.sh" ]

#ENTRYPOINT [ "tail -f" ]