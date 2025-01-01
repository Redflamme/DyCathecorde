# Utiliser l'image PHP officielle avec Apache
FROM php:8.0-apache

# Installer les extensions nécessaires pour PDO et MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copier tous les fichiers de votre projet dans le répertoire web d'Apache
COPY . /var/www/DYCATHECORDE

# Exposer le port 80
EXPOSE 80
