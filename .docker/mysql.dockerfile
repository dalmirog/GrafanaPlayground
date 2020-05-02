FROM mysql
ENV MYSQL_ROOT_PASSWORD=chulengo
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=chulengo
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
COPY Databases/world.sql /etc/mysql/databases/world.sql
COPY Databases/sakila.sql /etc/mysql/databases/sakila.sql

#sudo docker exec -it grafanaplayground_mysql_1 sh -c 'mysql -h localhost --user=root --password=chulengo sys < /etc/mysql/databases/world.sql' 
#sudo docker exec -it grafanaplayground_mysql_1 sh -c 'mysql -h localhost --user=root --password=$MYSQL_PASSWORD sys < /etc/mysql/databases/sakila.sql'