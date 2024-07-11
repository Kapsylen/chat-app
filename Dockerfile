FROM maven:3.8.3-openjdk-17
LABEL maintainer="your-email@example.com"
VOLUME /tmp
EXPOSE 9000
ARG JAR_FILE=target/chat-app-demo.jar
ADD ${JAR_FILE} chat-app-demo.jar
ENTRYPOINT ["java","-jar","/chat-app-demo.jar"]