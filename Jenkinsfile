pipeline {
    agent { docker { image 'ruby:2.5' } }
    stages {
        stage('build') {
            steps {
                echo 'hello jenkins!'
            }
        }
        stage('test') {
            steps {
                sh 'ruby ./my_script.rb'
            }
        }
        stage('build-docker') {
            steps {
                sh 'docker build -t docker-challenge1:latest'
            }
        }

        stage('run-docker') {
            steps {
                sh 'docker run docker-challenge1:latest'
            }
        }
    }
}
