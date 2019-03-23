
### Build Image
FROM maven:3.6.0-jdk-11-slim as builder
# Create App Folder for Sources
RUN mkdir -p /build
WORKDIR /build
COPY pom.xml /build
#Download All Required Dependencies into one layer
RUN mvn -B dependency:resolve dependency:resolve-plugins
#Copy Source Code
COPY src /build/src
# Build Application
RUN mvn package
