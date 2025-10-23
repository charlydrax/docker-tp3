# On part de la même image que ton conteneur PHP actuel
FROM php:fpm

# Installation de l’extension mysqli
RUN docker-php-ext-install mysqli

# (Optionnel) activer l’extension explicitement
RUN docker-php-ext-enable mysqli