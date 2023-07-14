FROM openjdk:8
EXPOSE 8000
ADD target/currency-exchange.jar currency-exchange.jar
ENTRYPOINT ["java","-jar","/currency-exchange.jar"]

FROM jenkins/jenkins  
USER root  
RUN curl -L \  
  "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" \  
  -o /usr/local/bin/docker-compose \  
  && chmod +x /usr/local/bin/docker-compose  
USER jenkins
