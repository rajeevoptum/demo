pipeline {
    agent any
    stages {
     // adasfddded
        stage('Checkout the Git repository') {
            steps {
                git branch: ‘main’, url: '  https://github.com/rajeevoptum/demo.git'
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    def dockerfile = 'dockerfile'
                    def registry = 'localhost:5000'
                    def imageName = 'myimage'
                    def imageTag = 'latest'
                    def dockerImage = docker.build("${registry}/${imageName}:${imageTag}", "-f ${dockerfile} .")
                    dockerImage.push()
                }
            }
        }
    }
}
