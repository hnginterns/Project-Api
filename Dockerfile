FROM  1and1internet/ubuntu-16-nginx-php-7.1

ENV HOME /root


WORKDIR /var/www/Project-Api/

COPY . /var/www/Project-Api/