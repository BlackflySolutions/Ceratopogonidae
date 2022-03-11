#!/bin/bash
# docker pull wordpress:5-php7.4-apache 
docker build -t ceratopogonidae:5-php7.4-apache-wordpress wordpress/
docker build -t ceratopogonidae:5-php7.4-apache-admin admin/
