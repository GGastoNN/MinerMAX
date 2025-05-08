# Usamos una imagen base de Node.js
FROM node:alpine

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos del proyecto al contenedor
COPY . /app

# Instalamos dependencias (si fuera necesario)
RUN npm install

# Exponemos el puerto 80
EXPOSE 80

# Ejecutamos el servidor
CMD ["node", "server.js"]
