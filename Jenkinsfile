
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
   
         stage('Build Maven'){
            steps{
              checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '3fd4127d-e3f3-423f-9490-e14fac1066d7', url: 'https://github.com/ayseayparcasiImst/docker-compose-jenkins.git']])
              sh 'mvn clean install'
            }
        }

        
          stage('docker-compose') {
           steps {
              sh "docker-compose build"
              sh "docker-compose up -d"
             
           }
       }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t abc/currency-exchange .'
                }
            }
        }

}
}
