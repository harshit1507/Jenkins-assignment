FROM maven:3.8.4-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -B -f pom.xml dependency:resolve dependency:resolve-plugins
COPY src src
RUN mvn -B package

FROM centos:7
RUN yum install java -y
RUN yum install net-tools -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz /
RUN tar -xzf apache-tomcat-8.5.99.tar.gz
COPY --from=build /app/target/sparkjava-hello-world-1.0.war /apache-tomcat-8.5.99/webapps
EXPOSE 8080/tcp
CMD ["/apache-tomcat-8.5.99/bin/catalina.sh", "run"]

