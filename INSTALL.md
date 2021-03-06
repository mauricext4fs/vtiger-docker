# Requirement

You need docker-proxy. You can download it here:

https://github.com/mauricext4fs/docker-proxy

git clone https://github.com/mauricext4fs/docker-proxy.git

# INSTALL

- open .env change vtiger.ninezh.cc for your hostname
- open ./etc/nginx/vtiger.conf and specify the ssl certificate
  you want to use. Don't forget to add a volume mapping or 
  Docker copy of the certificate inside the docker instance.
- run sudo ./configure

Now go to https://thedomainyourwrotein.env
to initialize Vtiger.

Full config including MySQL authentication  are shown 
in this screenshot below:

<img src="assets/img/setup_screenshot.png">

username: vtiger
pass: vtiger
hostname: mysql (it run inside docker namespace... you cannot access 
	  this database directly without passing by docker as the port
	  mapping as been disabled for security reason).
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
