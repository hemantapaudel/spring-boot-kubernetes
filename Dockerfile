FROM openjdk:8
ADD target/spring-boot-kubernetes.jar spring-boot-kubernetes.jar
EXPOSE 80
ENTRYPOINT ["java" ,"-jar", "spring-boot-kubernetes.jar"]