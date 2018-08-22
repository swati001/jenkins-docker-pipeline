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
                'docker build -t docker-jenkins:latest .'
            }
        }

        stage('run-docker') {
            steps {
                echo 'in stage run-docker...'
                'docker run --rm docker-jenkins:latest'
            }
        }
    }
}
