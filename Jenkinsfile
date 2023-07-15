pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }

    stages {
        stage('Build') {
            steps {
                sh 'python --version'
            }
        }
    }
}