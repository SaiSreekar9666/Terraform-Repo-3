pipeline {
    agent {
        node{
            label 'terraform'
        }
    }
    stages {
        stage{
            steps('Checkout'){
                git url:'https://github.com/SaiSreekar9666/explain.git' branch:'pipeline-terraform'
                echo 'successfully checkedout'
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform validate'){
            steps{
                sh 'terraform validate'
                sh 'pwd'
                echo 'validation successfull' 
            }
        }
        stage('terraform plan'){
            environment {
                AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY-ID')
                AWS_SECRET_ACCESS_KEY = credentials('AWS-SECRET-ACCESS-KEY')
            }
            steps{
                sh 'terraform plan'
                echo 'planing successfull'

            }
        }
        stage('terraform apply'){
            environment {
                AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
                AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
            }
            steps{
                sh 'terraform apply -auto-approve'
                echo 'applied successfully'
            }
        }
        stage('terraform destroy'){
            environment {
                AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
                AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
            }
            steps{
                sh 'terraform destroy -auto-approve'
                echo 'destroyed succesfull'
            }
        }
    }
}
