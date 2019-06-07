pipeline {

    agent { label 'jenkins-bc-did' }

    triggers {
       cron('H 5 * * *')
    }

    stages {
        stage('Prep') {
          steps {

           sh "/usr/local/bin/dockerd-entrypoint.sh &"
           sh "sleep 30"

            withCredentials([usernamePassword(credentialsId: 'docker-login', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
              sh "echo $PASS | docker login --username $USER --password-stdin"

            }
          }
        }
        stage('Build image') {
          steps {
            sh "docker login"
            sh "docker build . -t williamgillaspy/arm64v8dockerjdk8:dind"
          }
        }
        stage('Push the image.') {
          steps {
            sh "docker push williamgillaspy/arm64v8dockerjdk8:dind";
          }
        }
    }
}