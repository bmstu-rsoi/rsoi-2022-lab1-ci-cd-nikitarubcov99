FROM openjdk:17-jdk-alpine
RUN mkdir /app
WORKDIR app
EXPOSE 8080
ARG JAR_FILE=build/libs/rsoi-2022-lab1-ci-cd-nikitarub.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "-Dserver.port=$PORT","/app/app.jar"]