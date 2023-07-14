
pipeline {
    agent any
    tools{
        maven "maven 3.5.0"
    }
    stages{   
        stage("verify tooling") {
             steps {
                sh '''
				
                  docker version
                  docker info
                  docker compose version 

                '''
				}
      }
        
          stage('docker-compose') {
           steps {
	      sh 'docker build -t abc/currency-exchange .'

              sh 'docker-compose up currency-exchange.jar'
             
           }
       }

}
}
