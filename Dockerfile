FROM tomcat:9-jdk17-temurin

# Remove default webapps (optional, to keep container clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps directory
COPY target/live.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
