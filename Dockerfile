# Usamos una imagen base de Nginx (un servidor web muy ligero)
FROM nginx:alpine

# Copiamos el archivo index.html al contenedor
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80 para que se pueda acceder al servidor
EXPOSE 80
