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
                echo 'Intialiedn Succesfully'

            }
        }
        stage('terraform validate'){
            steps{
                sh 'terraform validate'
                echo 'validated sucessfully'
            }
        }
        stage('terraform plan'){
            steps{
                sh 'terraform plan'
                echo 'planned successfully'
            }
        }
        stage('terraform apply'){
            steps{
                sh 'terraform apply'
                echo 'Successfully Applied'
            }
        }
        stage('terraform destroy'){
            steps{
                sh 'terraform destroy'
                echo 'successfully destroy'
            }
        }
    }
}
