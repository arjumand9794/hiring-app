pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    environment {
        NEXUS_URL = "http://34.229.87.27:8081/repository/deployment_app/"
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
        stage('Deploy to Nexus') {
    steps {
        withCredentials([usernamePassword(
            credentialsId: 'nexus-creds',
            usernameVariable: 'NEXUS_USER',
            passwordVariable: 'NEXUS_PASS'
        )]) {
            sh """
            mvn deploy -DskipTests \
            -DaltDeploymentRepository=deployment_app::default::http://${NEXUS_USER}:${NEXUS_PASS}@localhost:8081/repository/deployment_app/
            """
        }
    }
}
