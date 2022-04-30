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
        sh 'python3 ./test_script/01_get_item.py'
        sh 'python3 ./test_script/02_get_items.py'
      }
    }

    stage('Up image') {
      steps {
        sh './publish.sh'
      }
    }

  }
}
