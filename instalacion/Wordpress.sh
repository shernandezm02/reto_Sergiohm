#Autor: Sergio Alejandro Hernandez Moreno
#19/01/2024
#----------------------------------------------------
#!/bin/bash

# Actualizar el sistema
sudo apt update
sudo apt upgrade -y

# Instalar Apache
sudo apt install apache2 -y

# Instalar PHP y módulos requeridos
sudo apt install php libapache2-mod-php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y

# Reiniciar Apache para aplicar los cambios
sudo systemctl restart apache2

# Descargar e instalar WordPress
sudo apt install unzip -y
wget https://wordpress.org/latest.zip
unzip latest.zip
sudo mv wordpress /var/www/html/
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 755 /var/www/html/wordpress

# Copiar el archivo de configuración de WordPress
sudo cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

# Limpiar archivos temporales
rm latest.zip

echo "Instalación completada. Accede a tu sitio WordPress en http://<Public-IP>/wordpress"
