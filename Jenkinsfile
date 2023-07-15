pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }

    stages {
        stage('Initialize'){
            def dockerHome = tool 'myDocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        stage('Build') {
            steps {
                sh 'python --version'
            }
        }
    }
}