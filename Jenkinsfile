pipeline {
  agent {
    node {
      label 'Worker'
    }

  }
  stages {
    stage('environment') {
      steps {
        sh 'ls -ltr'
        sh 'docker --version'
        sh 'whoami'
        sh 'docker ps'
      }
    }

    stage('build') {
      steps {
        sh './build.sh'
      }
    }

    stage('run') {
      steps {
        sh './run.sh'
      }
    }

  }
}