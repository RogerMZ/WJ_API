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