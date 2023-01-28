pipeline {
    agent any

    stages {
        stage('Stop All Conatiners') {
            steps {
                sh 'docker stop pypipe'
            }
        }
        
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sanjay2334/devops-learning'
            }
        }
        
        stage('Test Run') {
            steps {
                sh 'python3 hello.py'
            }
        }
        
        stage('Build') {
            steps {
                sh 'docker build -t sanjay2334/devops-learning:'+"${BUILD_ID}"+' .'
            }
        }
        
        stage('Build Test Run') {
            steps {
                sh 'docker run sanjay2334/devops-learning:'+"${BUILD_ID}"
            }
        }
        
        stage('Deploy to docker hub') {
            steps {
                withDockerRegistry([ credentialsId: "docker-hub-login", url: ""]) {
                    sh 'docker push sanjay2334/devops-learning:'+"${BUILD_ID}"   
                }
            }
        }
    }
}
