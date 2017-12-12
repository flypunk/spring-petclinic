FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/flypunk/spring-petclinic.git

FROM maven:3.5-jdk-8-alpine as build
WORKDIR /app
COPY --from=clone /app/spring-petclinic /app
RUN mvn -Dmaven.test.skip=true install

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/spring-petclinic-1.5.1.jar /app
EXPOSE 8080
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar spring-petclinic-1.5.1.jar"]
