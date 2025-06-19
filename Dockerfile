FROM bellsoft/liberica-openjdk-alpine:17 AS base

# Maintainer details
LABEL Maintainer="Joseph Haddison" \
      Email="joelhaddy07@gmail.com" \
      Team="SRE"

# Set working directory inside the container
WORKDIR /app


# Copy the JAR file from the build context to the container
COPY DemoGithubActions/target/DemoGithubActions-0.0.1-SNAPSHOT.jar DemoGithubActions.jar


# Expose the application port (8080 for Spring Boot apps)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "DemoGithubActions.jar"]