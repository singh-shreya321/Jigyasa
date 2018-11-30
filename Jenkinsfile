pipeline {
  agent {
    docker {
      image 'demo'
      args '-p 3030:3030'
    }

  }
  stages {
    stage('Build') {
      steps {
        echo 'Running'
      }
    }
  }
}