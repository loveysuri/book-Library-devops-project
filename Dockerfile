FROM eclipse-temurin:17-jdk
EXPOSE 8080
ADD target/springboot-crud.jar book-library.jar
ENTRYPOINT ["java","-jar","/book-library.jar"]