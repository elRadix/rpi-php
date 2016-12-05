# PHP on Raspberry Pi

#### IMPORTANT: This image is not ready yet! There is still a lot to do.

### Image Info
* PHP Website: https://secure.php.net/

### How to use this image
* ``` docker pull tobi312/rpi-php ```
* Optional: ``` mkdir -p /home/pi/html ```
* ``` docker run --name php -d -p 9000:9000 tobi312/rpi-php ``` 

or build it yourself
* ``` git clone https://github.com/TobiasH87Docker/rpi-php.git && cd rpi-php ```
* ``` docker build -t tobi312/rpi-php . ``` 
* ``` docker run --name php -d -p 9000:9000 tobi312/rpi-php ``` 
* http://localhost 

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-php/)
* [GitHub](https://github.com/TobiasH87Docker/rpi-php)