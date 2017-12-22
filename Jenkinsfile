pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "teste"'
      }
    }
    stage('Deploy') {
      steps {
        sh 'echo "ronaldo"'
      }
    }
    stage('Final') {
      steps {
        sh 'curl -i 127.0.0.1:8080'
      }
    }
  }
}