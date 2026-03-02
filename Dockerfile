FROM openjdk:17

WORKDIR /app

COPY hiring-app-1.0.0.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
