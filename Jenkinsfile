pipeline {
    agent any

    tools {
        maven 'Maven'
        sonarScanner 'SonarQubeScanner'
    }

    environment {
        NEXUS_URL = "http://34.224.80.43:8081"
        NEXUS_REPO = "deployment_app"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('Sonarqube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }

        stage('Quality Gate') {
            steps {
                timeout(time: 2, unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }

        stage('Upload to Nexus') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'nexus-creds',
                    usernameVariable: 'NEXUS_USER',
                    passwordVariable: 'NEXUS_PASS'
                )]) {
                    sh 'mvn deploy'
                }
            }
        }
    }

    post {
        success {
            echo "CI Pipeline Completed Successfully"
        }
        failure {
            echo "Pipeline Failed"
        }
    }
}
