pipeline{
    agent any
    stages{
        stage("git clone"){
            steps{
                sh"""
                git init
                git plan
                git([url: "https://github.com/Monesha-mone/security", branch: "master"])
                """
            }
        }
        stage("Terraform init and apply"){
            steps{
                sh"""
                cd "/var/lib/jenkins/workspace/security/vpc"
                terraform init
                terraform apply -auto-approve
                """
            }
        }
    }
}
