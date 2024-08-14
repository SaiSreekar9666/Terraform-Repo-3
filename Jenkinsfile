pipeline {
    agent {
        node{
            label 'terraform'
        }
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id') // Jenkins credentials ID for AWS access key
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key') // Jenkins credentials ID for AWS secret key
    }

    stages {
        stage('Checkout'){
            steps{
                checkout scm
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    withEnv(['AWS_ACCESS_KEY_ID=' + env.AWS_ACCESS_KEY_ID, 'AWS_SECRET_ACCESS_KEY=' + env.AWS_SECRET_ACCESS_KEY]) {
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    withEnv(['AWS_ACCESS_KEY_ID=' + env.AWS_ACCESS_KEY_ID, 'AWS_SECRET_ACCESS_KEY=' + env.AWS_SECRET_ACCESS_KEY]) {
                        sh 'terraform plan'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    withEnv(['AWS_ACCESS_KEY_ID=' + env.AWS_ACCESS_KEY_ID, 'AWS_SECRET_ACCESS_KEY=' + env.AWS_SECRET_ACCESS_KEY]) {
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                script {
                    withEnv(['AWS_ACCESS_KEY_ID=' + env.AWS_ACCESS_KEY_ID, 'AWS_SECRET_ACCESS_KEY=' + env.AWS_SECRET_ACCESS_KEY]) {
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}
