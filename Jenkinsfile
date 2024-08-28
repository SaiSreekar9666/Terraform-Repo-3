pipeline{
    agent{
        node{
            label 'terraform'
        }
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

                sh 'terraform validate'
            }
        }
        stage('terraform plan'){
            steps{
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials-id', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                sh 'terraform plan'
                echo 'succesfully planned'
            }
            }
        }
    }
}
