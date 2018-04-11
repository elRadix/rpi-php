# PHP on Raspberry Pi / armhf

### Supported tags and respective `Dockerfile` links
-	[`7.0-fpm`, `latest` (*Dockerfile*)](https://github.com/elRadix/rpi-php/blob/master/7.0-fpm/Dockerfile)
-	[`5.6-fpm` (*Dockerfile*)](https://github.com/elRadix/rpi-php/blob/master/5.6-fpm/Dockerfile)

### What is PHP?

PHP is a server-side scripting language designed for web development, but which can also be used as a general-purpose programming language. PHP can be added to straight HTML or it can be used with a variety of templating engines and web frameworks. PHP code is usually processed by an interpreter, which is either implemented as a native module on the web-server or as a common gateway interface (CGI).
> [wikipedia.org/wiki/PHP](https://en.wikipedia.org/wiki/PHP) and [php.net](https://php.net)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/php/logo.png)

### How to use this image
* ``` $ docker pull elradix/rpi-php:5.6 ```
* Optional: ``` $ mkdir -p /home/pi/html ```
* ``` $ docker run --name php --link some-sql-container:alias -v /home/pi/html:/var/www/html -e PHP_ERRORS=1 -e PHP_UPLOAD_MAX_FILESIZE=250 -d elradix/rpi-php:5.6 ``` 

or build it yourself
* ``` $ git clone https://github.com/elRadix/rpi-php.git && cd rpi-php ```
* ``` $ docker build -t elradix/rpi-php:5.6 ./5.6/ ``` 
* ``` $ docker run --name php --link some-sql-container:alias -v /home/pi/html:/var/www/html -e PHP_ERRORS=1 -e PHP_UPLOAD_MAX_FILESIZE=250 -d elradix/rpi-php:5.6 ```   

### Environment Variables
* `TZ` (Default: Europe/Berlin)
* `PHP_ERRORS` (set 1 to enable)
* `PHP_MEM_LIMIT` (Value in MB)
* `PHP_POST_MAX_SIZE` (Value in MB)
* `PHP_UPLOAD_MAX_FILESIZE` (Value in MB)
* `PHP_MAX_FILE_UPLOADS`
