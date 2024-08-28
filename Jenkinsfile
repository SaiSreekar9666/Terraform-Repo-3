pipeline{
    agent{
        node{
            label 'terraform'
        }
    }
    stages{
        stage('terraform init'){
            steps{
                sh 'terraform init'
                echo 'succesfully initalized'
                sh 'aws sts get-caller-identity'
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
