pipeline {

    agent any

    triggers {
       cron('H 5 * * *')
    }

    stages {
         stage('Prep') {
          steps {

            withCredentials([usernamePassword(credentialsId: 'docker-io-login', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
              sh "echo $PASS | docker login --username $USER --password-stdin"
            }
          }
        }
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
