# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the .jar file from the Jenkins workspace to the container
COPY target/javawebapp2.jar app.jar

# Run the .jar file when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]

