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
                sh 'ruby ./hello_script.rb'
            }
        }
        stage('build-docker') {
            steps {
                sh 'docker build -t docker-jenkins:${env.BUILD_NUMBER} .'
            }
        }

        stage('run-docker') {
            steps {
                sh 'docker --rm run -it --name my-running-script:${env.BUILD_NUMBER} docker-jenkins:${env.BUILD_NUMBER}'
            }
        }
    }
}