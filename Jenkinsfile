pipeline{
    agent any
    stages{
        stage('git clone'){
            steps{
                echo 'git cloned successful'
                echo 'git checkout'
            }
            
        }
        stage('build-stage'){
            steps{
                echo 'build stage is succesful'
            }
        }
        stage('nexus-stage'){
            steps{
                echo 'Artifacts successfully stored'
            }
        }
        stage('deploy-stage'){
            steps('deplot-stage'){
                echo 'Deployed succesfully'
                echo 'Sai'
            }
        }
        stage('checking memory,disc storage and ports'){
            steps('checking'){
                sh 'free -m'
                sh 'df -h'
                echo 'Successfully checked'
                echo 'success'
            }
        }
    }
}
