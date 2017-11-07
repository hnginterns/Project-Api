FROM  1and1internet/ubuntu-16-nginx-php-7.1

RUN apt install -y build-essential imagemagick unzip \
    && pecl install imagick

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ENV HOME /root

RUN apt-get update && apt-get install -y libmcrypt-dev libmagickwand-dev --no-install-recommends mysql-client \
        libfreetype6-dev \
		libjpeg62-turbo-dev \
		libpng12-dev \
		libxpm-dev \
		libvpx-dev \
    && docker-php-ext-configure gd \
		--with-freetype-dir=/usr/lib/x86_64-linux-gnu/ \
		--with-jpeg-dir=/usr/lib/x86_64-linux-gnu/ \
		--with-xpm-dir=/usr/lib/x86_64-linux-gnu/ \
		--with-vpx-dir=/usr/lib/x86_64-linux-gnu/ \
    && docker-php-ext-install mcrypt pdo_mysql gd

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www/bexpensetrim/budget-service

COPY . /var/www/bexpensetrim/budget-service