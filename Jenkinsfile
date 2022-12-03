// Create simple pipeline to React app and deploy on localhost
pipeline {
    //first build Dockerfile
    agent { dockerfile true }
    stages {
        stage(build) {
            steps {
                sh 'docker build -t poli-front .'
            }
        }
        stage(deploy) {
            steps {
                sh 'docker run -p 3000:80 poli-front:latest'
            }
        }
    }