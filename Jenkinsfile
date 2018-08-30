pipeline {
    agent { label { label "jenkins-slave"} }
    stages {
      stage('Code') {
        steps {
          sh 'hostname'
          git 'https://github.com/robarros/docker.git'
          sh 'ls -lha'
          }
      }
        
      stage('Build') {
        steps {
          sh 'docker build -t web01:$BUILD_NUMBER -t web01:latest --no-cache .'
          }
      }

      stage('Test Unit') {
        steps {
          sh 'docker inspect web01:$BUILD_NUMBER'
          sh 'docker inspect web01:latest'
        }
      }

      stage('Deployment to Prod') {
        steps {          
          sh 'docker rm -f portal || echo "removido container portal"'
          sh 'docker container run -d -p 80:80 --name portal web01'
          sh 'curl localhost | grep FireFox'
        }
      }

    }

    post {
      always {
        deleteDir() /* clean up our workspace */
        }
      }
    
}
