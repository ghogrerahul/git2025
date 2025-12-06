pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/ghogrerahul/git2025.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sshagent(credentials: ['docker-host-ssh']) {
                    sh 'ssh jenkins@54.227.42.119 "cd /home/jenkins/sample-app && docker build -t demo-app:latest ."'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                sshagent(credentials: ['docker-host-ssh']) {
                    sh 'ssh jenkins@54.227.42.119 "docker run --rm demo-app:latest"'
                }
            }
        }
    }
}
