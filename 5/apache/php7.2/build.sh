#!/bin/bash
docker pull wordpress:5-php7.2-apache 
docker build -t wordpress:5-php7.2-apache-wordpress wordpress/
docker build -t wordpress:5-php7.2-apache-admin admin/
