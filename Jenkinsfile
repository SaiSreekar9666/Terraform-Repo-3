pipeline{
    agent{
        node{
            label 'terraform'

    }
    stages{
        stage('Checkout SCM'){
            steps{
                checkout scm
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform validate'){
            steps{
                sh 'terrafomr validate'
            }
        }
        stage('terraform plan'){
            steps{
                sh 'terraform plan -var-file="terraform.tfvars"'
            }
        }
    }
}
