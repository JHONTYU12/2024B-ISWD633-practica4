# Usar Debian como imagen base
FROM debian:latest

# Instalar Apache (httpd) en Debian
RUN apt-get update && apt-get install -y apache2

# Copiar archivos de la carpeta web al directorio de Apache
COPY ./web /var/www/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["apache2ctl", "-D", "FOREGROUND"]
