pipeline {
  agent any

  stages {
    stage("Build") {
      steps {
        bat "mvn -v"
        bat "mvn package"
      }
    }
  }
}
