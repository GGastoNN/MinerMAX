# Usamos la imagen oficial de NGINX
FROM nginx:alpine

# Copiar el archivo index.html desde la raíz de tu repositorio a la carpeta donde nginx lo servirá
COPY ./index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80 para nginx
EXPOSE 80
