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
        sh '''whoami
env'''
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

    stage('Test') {
      steps {
        sh 'python3 ./test_script/00_test_api.py'
        sh 'python3 ./test_script/01_test_api.py'
        sh 'python3 ./test_script/02_test_api.py'
      }
    }

  }
}
