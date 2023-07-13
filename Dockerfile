FROM openjdk:8

COPY currency-exchange.jar currency-exchange.jar
ADD target/currency-exchange.jar currency-exchange.jar.jar
EXPOSE 8000
ENTRYPOINT ["java","-jar","/currency-exchange.jar"]
