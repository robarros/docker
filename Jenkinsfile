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
          sh 'docker build -t 10.0.0.111:5000/web01:$BUILD_NUMBER -t 10.0.0.111:5000/web01:latest --no-cache .'
          sh 'docker push 10.0.0.111:5000/web01:latest'
          sh 'docker push 10.0.0.111:5000/web01:$BUILD_NUMBER'
          }
          
      }

      stage('Test Unit Contauner') {
        steps {
          sh 'docker inspect 10.0.0.111:5000/web01:$BUILD_NUMBER'
          sh 'docker inspect 10.0.0.111:5000/web01:latest'
        }
      }

      stage('Deployment to Prod') {
        steps {          
          sh 'docker rm -f portal || echo "removido container portal"'
          sh 'docker container run -d -p 80:80 --name portal 10.0.0.111:5000/web01:$BUILD_NUMBER'
          }
      }
      
        stage('Test Deployment') {
          steps {
            sh 'curl localhost | grep "Internet Explorer 9"'
            sh 'curl localhost | grep "FireFox 25"'
            sh 'curl localhost | grep "Google Chrome 31"'
        }
      }
    }

    post {
      always {
        deleteDir() /* clean up our workspace */
        }
      }
    
}
