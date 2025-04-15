# Use OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the Jenkins workspace to the container
COPY  /var/lib/jenkins/.jenkins/workspace/build-webapp2/target/javawebapp00-1.0.jar app.jar

# Command to run the jar file when the container starts
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

