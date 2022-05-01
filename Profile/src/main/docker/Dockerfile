# Ubuntu Linux as the base image
FROM arm64v8/maven:3.8.4-jdk-11-slim

# Install the packages by using the default package manager in Ubuntu
#RUN apt-get update && \
#    apt-get -y install default-jre


# Copy the files from the host file system and ADD them to the desired directory inside the container image
# Note that this will copy the JAR to `/task1.jar`
ADD ./././ /

RUN mvn clean package
# Define the command which runs when the container starts
# Note that the filepath of the JAR is `/demo-1.0-SNAPSHOT-jar-with-dependencies.jar` 
# as in the filesystem of the image,
# NOT `./target/demo-1.0-SNAPSHOT-jar-with-dependencies.jar` as in the host filesystem
CMD ["java -Xms512m -Xmx64g -jar target/vertx-fat.jar"]

# Use Bash as the container's entry point.
ENTRYPOINT ["/bin/bash", "-c"]