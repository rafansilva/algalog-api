FROM eclipse-temurin:17

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} /app/algalog-api.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "algalog-api.jar"]