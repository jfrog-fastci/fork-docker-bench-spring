FROM eclipse-temurin:21

RUN apt-get update
RUN apt-get install -y vim less man-db wget telnet curl net-tools iputils-ping htop dnsutils strace maven

WORKDIR /app

COPY . .

RUN mvn package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/app-1.0.0.jar"]
