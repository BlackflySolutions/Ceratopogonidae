FROM wordpress:5-php7.4-apache
RUN a2enmod expires
RUN apt-get update && apt-get install -y msmtp && \
  apt-get clean && \
  echo 'sendmail_path = "/usr/bin/msmtp -C /etc/msmtprc -t"' > /usr/local/etc/php/conf.d/mail.ini
COPY msmtprc /etc/msmtprc
# handle the varnish+hitch proxying and add browser caching
COPY htaccess /var/www/html/.htaccess
# increase some php defaults
COPY wordpress.ini /usr/local/etc/php/conf.d/
