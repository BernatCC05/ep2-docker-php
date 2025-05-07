# Dockerfile
FROM php:8.2-apache

# Instal·lem extensions de PHP necessàries (exemple: mysqli per bases de dades)
RUN docker-php-ext-install mysqli

# Copiem una pàgina web bàsica
COPY index.php /var/www/html/

EXPOSE 80
