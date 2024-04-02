
FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk
WORKDIR /usr/src/app
COPY pg2.java .
RUN javac pg2.java
CMD ["java", "pg2"]

