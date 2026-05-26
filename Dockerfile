FROM maven:3.8-openjdk-8-slim AS build
WORKDIR /app
COPY pom.xml .
COPY server/pom.xml server/
COPY webapp/pom.xml webapp/
COPY server/src server/src
COPY webapp/src webapp/src
RUN mvn clean package -DskipTests

FROM tomcat:8-jre8
COPY --from=build /app/webapp/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
