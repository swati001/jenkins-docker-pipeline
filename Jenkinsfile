pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'hello jenkins!'
            }
        }
        stage('build-docker') {
            steps {
                echo 'in stage build-docker...'
                sh 'docker build -d -v /var/run/docker.sock:/var/run/docker.sock \
              -v $(which docker):/usr/bin/docker -t docker-jenkins:latest .'
            }
        }

        stage('run-docker') {
            steps {
                echo 'in stage run-docker...'
                sh 'docker run --rm -d -v /var/run/docker.sock:/var/run/docker.sock \
              -v $(which docker):/usr/bin/docker docker-jenkins:latest'
            }
        }
    }
}
