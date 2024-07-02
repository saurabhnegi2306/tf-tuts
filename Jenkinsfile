#!/usr/bin/env groovy
pipeline{
    stages {
        stage('Checkout') {
            steps{
            git branch: 'main', url: 'https://github.com/saurabhnegi2306/tf-tuts.git'
            }
        }    
        stage('Test') {
            steps{
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: '74ad2b2a-fe05-42b2-841f-9cea9b63d288', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                sh 'aws s3 ls --region=us-east-1'
                }
            }    
        }
        stage('Deploy') {
            steps{
                sh 'terraform init'
                sh 'aws s3 ls --region=us-east-1'
                sh 'terraform destroy -auto-approve'
                sh 'terraform apply -auto-approve'
            }
        }    
        
    }
}
