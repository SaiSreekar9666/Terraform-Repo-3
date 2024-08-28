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
                sh 'terraform plan -out="terraform.tfvars"'  // Run Terraform plan and save it to a file
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -var-file= "terraform.tfvars" -auto-approve'  // Apply the saved plan
            }
        }
        stage('Terraform Destroy') {
            steps {
                sh 'terraform destroy -auto-approve -var-file="terraform.tfvars"'  // Destroy infrastructure with confirmation
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
