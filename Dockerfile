FROM  1and1internet/ubuntu-16-nginx-php-7.1

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ENV HOME /root


WORKDIR /var/www/Project-Api/build

COPY . /var/www/Project-Api/