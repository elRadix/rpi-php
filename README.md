# Dockerfile for PHP with Apache2 on Raspberry Pi (based on the Docker official image for php)
* https://hub.docker.com/r/_/php/
* https://github.com/docker-library/php
* https://packages.debian.org/en/jessie/php/

Use:
* ``` git clone REPOSITORY && cd rpi-php/ ```
* Optional: ``` mkdir -p /home/pi/html ```
* ``` docker build -t tobi312/rpi-php:5.6-apache ./5.6-apache/ ``` 
* PHP without some extensions: ``` docker run --name phpapache -d -p 80:80 --link some-container:alias -v /home/pi/html:/var/www/html tobi312/rpi-php:5.6-apache ```
* PHP with some extensions:
	* ``` docker build -t tobi312/rpi-php:5.6-apache-extend ./5.6-apache-extend/ ```
	* ``` docker run --name phpapache -d -p 80:80 --link some-container:alias -v /home/pi/html:/var/www/html tobi312/php:5.6-apache-extend ``` 
* http://localhost 
