#pull a base image fir java application
FROM openjdk:17-jdk-alpine

# create a work directory where code will be store
WORKDIR /app

# copy code from host to container
COPY src/Main.java /app/Main.java

# compile the application code
RUN javac Main.java

# run the application, CMD runs after your container is created
CMD ["java", "Main"]

