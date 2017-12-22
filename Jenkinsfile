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
        sh 'ping 8.8.8.8'
      }
    }
  }
}