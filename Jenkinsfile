pipeline {
    agent any

     tools {
        jdk 'jdk-17'
        maven 'maven'
    }


    environment {
        // Replace with your Docker Hub username
        DOCKERHUB_USER = 'lovekumar63988'
        // Replace with your repository name
        IMAGE_NAME = 'lovekumar63988/book-library'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/loveysuri/book-Library-devops-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def appVersion = sh(script: "mvn help:evaluate -Dexpression=project.version -q -DforceStdout", returnStdout: true).trim()
                    sh "docker build -t ${IMAGE_NAME}:${appVersion} ."
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                        sh "echo $PASS | docker login -u $USER --password-stdin"
                        def appVersion = sh(script: "mvn help:evaluate -Dexpression=project.version -q -DforceStdout", returnStdout: true).trim()
                        sh "docker push ${IMAGE_NAME}:${appVersion}"
                        // Optionally push 'latest' tag
                        sh "docker tag ${IMAGE_NAME}:${appVersion} ${IMAGE_NAME}:latest"
                        sh "docker push ${IMAGE_NAME}:latest"
                    }
                }
            }
        }
    }

    post {
        always {
            sh 'docker logout'
        }
    }
}