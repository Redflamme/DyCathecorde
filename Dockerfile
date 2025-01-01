# Utiliser l'image PHP officielle avec Apache
FROM php:8.0-apache

# Installer les extensions nécessaires pour PDO et MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copier tous les fichiers de votre projet dans le répertoire web d'Apache
COPY . /var/www/DYCATHECORDE

# Configurer la racine du document pour Apache
RUN sed -i 's|/var/www/html|/var/www/DYCATHECORDE|g' /etc/apache2/sites-available/000-default.conf
RUN sed -i 's|/var/www/html|/var/www/DYCATHECORDE|g' /etc/apache2/apache2.conf

# Activer les modules Apache nécessaires
RUN a2enmod rewrite

# Donner les permissions appropriées
RUN chown -R www-data:www-data /var/www/DYCATHECORDE \
    && chmod -R 755 /var/www/DYCATHECORDE

# Exposer le port 80
EXPOSE 80

# Commande par défaut pour démarrer Apache
CMD ["apache2-foreground"]

# Installer l'extension PDO pour PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo_pgsql
