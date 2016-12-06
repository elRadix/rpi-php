# PHP on Raspberry Pi

### Image Info
* * without httpd
* PHP Website: https://secure.php.net/

### How to use this image
* ``` docker pull tobi312/rpi-php:5.6-fpm ```
* Optional: ``` mkdir -p /home/pi/html ```
* ``` docker run --name php --link some-sql-container:alias -v /home/pi/html:/var/www/html -e PHP_ERRORS=1 -e PHP_UPLOAD_MAX_FILESIZE=250 -d tobi312/rpi-php:5.6-fpm ``` 

or build it yourself
* ``` git clone https://github.com/TobiasH87Docker/rpi-php.git && cd rpi-php ```
* ``` docker build -t tobi312/rpi-php:5.6-fpm ./5.6-fpm/ ``` 
* ``` docker run --name php --link some-sql-container:alias -v /home/pi/html:/var/www/html -e PHP_ERRORS=1 -e PHP_UPLOAD_MAX_FILESIZE=250 -d tobi312/rpi-php:5.6-fpm ```  
* http://localhost 

### You need httpd?, see here: 
* Apache2
	* [DockerHub](https://hub.docker.com/r/tobi312/rpi-apache2/)
	* [GitHub](https://github.com/TobiasH87Docker/rpi-apache2)
* NGINX
	* [DockerHub](https://hub.docker.com/r/tobi312/rpi-nginx/)
	* [GitHub](https://github.com/TobiasH87Docker/rpi-nginx)

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-php/)
* [GitHub](https://github.com/TobiasH87Docker/rpi-php)