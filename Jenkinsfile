pipeline {
  agent {
    any {
      image "maven:3.6.0-jdk-13"
    }
  }

  stages {
    stage("Build") {
      steps {
        bat "mvn -v"
        bat "mvn package"
      }
    }
  }

  //post {
  //  always {
  //    cleanWs()
  //  }
  //}
}

