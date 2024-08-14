pipeline{
    agent{
        node{
            label 'terraform'
        }
    }
    stagess{
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
                sh 'terraform plan -var-file="terraform.tfvars"'
                echo 'planned successfully'
            }
        }
        stage('terraform apply -var-file= "terraform.tfvars"'){
            steps{
                sh 'terraform apply -var-file="terraform.tfvars"'
                echo 'Successfully Applied'
            }
        }
        stage('terraform destroy'){
            steps{
                sh 'terraform destroy -var-file="terrraform.tfvars"'
                echo 'successfully destroy'
            }
        }
    }
}
