# Nome da imagem que servirá de base
FROM alpine
# Comandos que serão executados durante o 'docker build'
RUN apk update && \
    apk upgrade && \
    apk add openjdk16 && \
    apk add git && \
    git clone https://github.com/mikeicd/JavaDocker.git && \
    cd JavaDocker && \
    ./gradlew jar
#COPY mensagem.txt /
# Comando que será executado durante o 'docker run'
CMD ["java","-jar","/JavaDocker/build/libs/HelloWorldDocker-1.0-SNAPSHOT.jar"]