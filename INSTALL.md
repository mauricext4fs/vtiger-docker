# Requirement

You need docker-proxy. You can download it here:

https://github.com/mauricext4fs/docker-proxy

git clone https://github.com/mauricext4fs/docker-proxy.git

# INSTALL

- open .env change vtiger.ninezh.cc for your hostname
- run sudo ./configure

Now go to https://thedomainyourwrotein.env

MySQL auth are shown in this screenshot:

[logo]: https://github.com/mauricext4fs/vtiger-docker/blob/master/assets/img/setup_screenshot.png  "Admin Setup"

username: vtiger
pass: vtiger
hostname: mysql (it run inside docker namespace... you cannot access this database directly without passing by docker as the port mapping as been disabled for security reason).
database: your choice but don't forget to click on "Create new database".

# MySQL

If you wish to connect to the mysql DB for your vTiger installation be aware that the root password 
is randomly generated and only shown once at the first run. If you are lucky you can see it when 
running: 

```sh
docker-compose logs mysql | grep "GENERATED ROOT PASSWORD"
```

To access the database with the mysql cli use:

```sh
docker-compose exec mysql mysql -u vtiger -p vtiger
```
The password is simply: vtiger


Enjoy!
