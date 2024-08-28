pipeline {
    agent {
        node {
            label 'terraform'  // Specifies the agent with the label 'terraform'
        }
    }

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
                sh 'terraform plan -var-file=terraform.tfvars -out=terraform.tfplan'  // Run Terraform plan and save it to a file
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply terraform.tfplan'  // Apply the saved plan
            }
        }
        stage('Terraform Destroy') {
            steps {
                sh 'terraform destroy -auto-approve -var-file=terraform.tfvars'  // Destroy infrastructure with confirmation
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
}
