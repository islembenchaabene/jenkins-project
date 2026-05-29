pipeline {
    agent any

    tools {
        jdk 'JDK21'
        maven 'maven3'
    }

    stages {

        stage('Clone') {
            steps {
                echo 'Repository already cloned by Jenkins'
            }
        }

        stage('Clean') {
            steps {
                sh 'mvn clean'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn install -DskipTests'
            }
        }

    }
}