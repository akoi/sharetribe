## Running with docker-compose

1. Install and configure Docker (use Docker Toolbox for OSX)
* Clone the project repository
* Add a config/database.yml file according to setup instructions, and update:
  * `username: <%= ENV['DB_ENV_MYSQL_USER'] %>`
  * `password: <%= ENV['DB_ENV_MYSQL_PASSWORD'] %>`
  * `host: <%= ENV['DB_PORT_3306_TCP_ADDR'] %>`
* Add a config/config.yml file according to setup instructions, and update:
  * `smtp_email_address: <%= ENV['MAIL_PORT_1025_TCP_ADDR'] %>`
* Obtain IP of docker host (E.g. `docker-machine ls`)
* Edit hosts file with:
  * `<docker_host_ip> test.lvh.me`
* From the project root run:
  * `docker-compose -f docker/docker-compose.yml up`
* Access:
  * Application: [http://test.lvm.me:3000/](http://test.lvm.me:3000/)
  * Mailcatcher: [http://test.lvm.me:1080/](http://test.lvm.me:1080/)