pipeline {
  agent any

  stages {
    stage("Build") {
      steps {
        sh "mvn -v"
        sh "mvn package"
      }
    }
  }
}
