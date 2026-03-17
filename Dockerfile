FROM eclipse-temurin:17-jdk
EXPOSE 8080
ADD target/springboot-crud.jar springboot-crud.jar
ENTRYPOINT ["java","-jar","/springboot-crud.jar"]