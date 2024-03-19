pipeline {
  agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }

  stages {
    stage("Docker Build") {
      steps {
        bat "docker build -t harshit1507/java-spark:latest ."
      }
    }

    stage("Login to Docker Hub") {
      steps {
        //bat "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
        bat "docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW"
      }
    }

    stage("Docker Push") {
      steps {
        bat "docker push harshit1507/java-spark:latest"
      }
    }
  }

  //post {
  //  always {
  //    cleanWs()
  //  }
  //}
}

