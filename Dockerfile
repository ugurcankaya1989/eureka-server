FROM openjdk:13-jdk-alpine
VOLUME /tmp
COPY target/*.jar eureka-server.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/eureka-server.jar"]