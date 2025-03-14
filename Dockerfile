# Use an official Tomcat image as a base
FROM tomcat:9.0

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the project files to the Tomcat webapps directory
COPY WebContent /usr/local/tomcat/webapps/ROOT

# Expose port 8080 to access the web application
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
