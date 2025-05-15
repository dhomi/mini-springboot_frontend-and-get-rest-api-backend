FROM --platform=linux/arm64 openjdk:21-jdk-slim AS build
VOLUME /tmp

# Copy Maven Wrapper files
COPY mvnw .
COPY .mvn .mvn

# Copy the rest of the project files
COPY pom.xml .
COPY src ./src

# Make the Maven Wrapper executable
RUN chmod +x mvnw

# Build the application
RUN ./mvnw clean package -DskipTests

FROM --platform=linux/arm64 openjdk:21-jdk-slim
EXPOSE 8080
COPY --from=build target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]