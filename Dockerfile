FROM openjdk:8

COPY currency-exchange.jar currency-exchange.jar

EXPOSE 8000
ENTRYPOINT ["java","-jar","/currency-exchange.jar"]