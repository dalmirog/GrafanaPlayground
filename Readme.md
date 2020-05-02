## Running the Containers

1) Build the containers

`sudo docker-compose build`

2) Spin up the containers 

`sudo docker-compose up -d`

3) Load the `world` database

`sudo docker exec -it grafanaplayground_mysql_1 sh -c 'mysql -h localhost --user=root --password=$MYSQL_PASSWORD sys < /etc/mysql/databases/world.sql'`

4) Load the Sakila database
`sudo docker exec -it grafanaplayground_mysql_1 sh -c 'mysql -h localhost --user=root --password=$MYSQL_PASSWORD sys < /etc/mysql/databases/sakila.sql'`

## Mysql Info

| Mysql User  | Mysql Pass  | Mysql port from host| Mysql port from Grafana|
|---|---|---|---|
| root| chulengo | 3308 | 3306|
