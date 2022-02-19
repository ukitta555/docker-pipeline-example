FROM openjdk:8u312-jdk-bullseye
WORKDIR /usr/src/app
COPY . .
EXPOSE 8080
RUN ls
RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
 