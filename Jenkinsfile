pipeline {
    agent {
        node{
            label 'terraform'
        }
    }  // Specifies that this pipeline can run on any available agent

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm  // Checkout source code
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'  // Initialize Terraform
            }
        }
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'  // Validate Terraform configuration
            }
        }
        stage('Terraform Plan') {
            steps {
                
                    sh 'terraform plan -var-file=".tfvars"'  // Run Terraform plan
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }

