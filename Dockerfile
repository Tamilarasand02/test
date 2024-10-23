# Use an official Tomcat image as the base image
FROM tomcat:9.0.94-jdk11-corretto

# Copy the WAR file to the Tomcat webapps directory
COPY target/hello-world-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
