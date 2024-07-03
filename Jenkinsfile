#!/usr/bin/env groovy
pipeline{
    agent any
    environment {
      AWS_REGION = 'us-west-2'
    }
    stages {
        stage('Checkout') {
            steps{
            git branch: 'main', url: 'https://github.com/saurabhnegi2306/tf-tuts.git'
            }
        }    
        // stage('Test') {
        //     steps{
        //         withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: '74ad2b2a-fe05-42b2-841f-9cea9b63d288', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
        //         sh 'whoami'
        //         }
        //     }    
        // }
        stage('Deploy') {
            steps{
                sh 'terraform init -reconfigure'
                sh 'terraform destroy -auto-approve'
                sh 'terraform apply -auto-approve'
            }
        }    
    }
}

