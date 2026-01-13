FROM eclipse-temurin:8-jre-alpine

# Create app directory
RUN mkdir -p /opt/app
ENV PROJECT_HOME=/opt/app

# Copy the built jar
COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar

WORKDIR $PROJECT_HOME
EXPOSE 8080

CMD ["java", "-jar", "./spring-boot-mongo.jar"]
