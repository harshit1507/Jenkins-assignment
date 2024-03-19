pipeline {
  agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }

  stages {
    stage("Docker Build") {
      steps {
        bat "docker build -t harshit150796/java-spark:latest ."
      }
    }

    stage("Docker Push") {
      steps {
        script {
            withCredentials([usernamePassword( credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASSWORD')]) {
            def registry_url = "registry.hub.docker.com/"
            bat "docker login -u $USER -p $PASSWORD ${registry_url}"
            docker.withRegistry("http://${registry_url}", "dockerhub") {
            bat "docker push harshit150796/java-spark:latest"
        }
        }
        
      }
    }
  }
}

  post {
   always {
     cleanWs()
   }
  }
}

