#ARG REPOSITORY_FROM=blackflysolutions/
ARG REPOSITORY_FROM=""
FROM ${REPOSITORY_FROM}ceratopogonidae:5-php7.4-apache-wordpress
# an extended version of the webserver image, adding extra packages and scripts
RUN apt-get update \
  && apt-get install -y mariadb-client sudo vim git zip unzip netcat rsync \
  && apt-get purge -y
COPY wp-cli.phar /usr/local/bin/wp
COPY wait-for-it.sh /usr/local/bin/wait-for-it.sh
COPY core-install.sh /usr/local/bin/core-install.sh
COPY admindb.sh /usr/local/bin/admindb.sh
RUN chmod ugo+x /usr/local/bin/wp && chmod ugo+x /usr/local/bin/*.sh 
# provide a non-root user to own drupal code
RUN useradd -u 1978 -g www-data -ms /bin/bash drupal
COPY admin.conf /etc/apache2/conf-available
RUN a2enconf admin
# CMD["apache2-foreground"]
# Run the same initialization script that vhttp does, and then the admin one.
# CMD /usr/local/bin/admin.sh && apache2-foreground
