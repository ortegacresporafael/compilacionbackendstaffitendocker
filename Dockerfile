#Instalacion de una imagen 3.8.1 con maven y java 15
FROM maven:3.8.1-adoptopenjdk-15

#Copia del repositorio del proyecto
RUN git clone http://rafaelortega:rafabosonit@192.168.10.210/staffit/backend.git

#Crea una carpeta para el volumen (persistencia de datos)

RUN mkdir /myvol

#Creacion del volumen
VOLUME /myvol

WORKDIR /backend

#Cambio a la rama develop, ya que la rama por defecto es la master
RUN git checkout develop

#Cambio de directorio para ejecutar el comando que compila
WORKDIR /backend/microservices/java

CMD sh -c "mvn package; cp -r /backend/microservices/java /myvol"
