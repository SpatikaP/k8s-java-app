FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app
COPY target/k8s-java-app-1.0-SNAPSHOT.jar app.jar

EXPOSE 3000

CMD ["java","-cp","app.jar","com.spatika.app.App"]