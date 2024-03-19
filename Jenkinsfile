pipeline {
  agent any

  stages {
    stage("Build") {
      steps {
        sh "mvn package"
      }
    }
  }

  post {
    always {
      cleanWs()
    }
  }
}
