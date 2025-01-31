/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'node:18.20.6' } }
    stages {
        stage('build') {
            steps {
                sh 'node --version'
            }
        }
    }
}
