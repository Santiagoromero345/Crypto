// Create simple pipeline to React app and deploy on localhost
pipeline {
    //first build Dockerfile
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t react-app .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -p 3000:80 react-app'
            }
        }
    }
}