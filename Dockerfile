FROM openjdk:8
EXPOSE 8000
ADD target/currency-exchange.jar currency-exchange.jar
ENTRYPOINT ["java","-jar","/currency-exchange.jar"]
