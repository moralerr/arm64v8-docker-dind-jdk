pipeline {

    agent any

    triggers {
       cron('H 5 * * *')
    }

    stages {
        stage('Build image') {
          steps {
            sh "docker build . -t williamgillaspy/arm64v8dockerjdk8:dind"
          }
        }
        stage('Push the image.') {
          steps {
            sh "docker push williamgillaspy/arm64v8dockerjdk8:dind"
          }
        }
    }
}
