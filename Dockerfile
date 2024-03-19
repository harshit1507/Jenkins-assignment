FROM maven:3.8.4-openjdk-11 AS build
#RUN apt update && apt -y upgrade
#RUN apt install -y wget
#RUN apt install -y openjdk-11-jdk
#RUN apt install -y alien dpkg-dev debhelper build-essential
#RUN mkdir /opt/tomcat/

#WORKDIR /opt/tomcat
#RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz
#RUN tar xvfz apache*.tar.gz
#RUN mv apache-tomcat-8.5.99/* /opt/tomcat/.
#RUN wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/java/17/archive/jdk-17.0.1_linux-x64_bin.rpm
#RUN alien -k --scripts jdk-17.0.1_linux-x64_bin.rpm
#RUN dpkg -i jdk-17.0.1_linux-x64_bin.deb
#RUN apt -y install java
#RUN java -version

# WORKDIR /app
# COPY pom.xml .
# RUN mvn -B -f pom.xml dependency:resolve dependency:resolve-plugins

# COPY src src

# RUN mvn -B package
# #WORKDIR /opt/tomcat/webapps

# FROM openjdk:11-jre-slim
# WORKDIR /app

# COPY --from=build /app/target/sparkjava-hello-world-1.0.war /app

# EXPOSE 8080

# #RUN mkdir /opt/tomcat/
# RUN apt update && apt -y upgrade
# RUN apt install -y wget
# WORKDIR /opt/tomcat
# RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz
# RUN tar xvfz apache*.tar.gz
# RUN mv apache-tomcat-8.5.99/* /opt/tomcat/.
# WORKDIR /opt/tomcat/webapps
# COPY --from=build /app/target/sparkjava-hello-world-1.0.war .
# CMD ["/opt/tomcat/bin/catalina.sh", "run"]
# #CMD ["java", "-jar", "sparkjava-hello-world-1.0.war"]