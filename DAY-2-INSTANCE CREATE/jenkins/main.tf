pipeline {
    agent any

    environment {
        TF_DIR = 'DAY-2-INSTANCE CREATE'
        GIT_REPO = 'https://github.com/vishnuthatiparthi/Terraform-practice.git'
    }

    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Choose Terraform action')
    }

    stages {
        stage('Git Checkout') {
            steps {
                git "${env.GIT_REPO}"
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${env.TF_DIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            when {
                expression { params.action == 'apply' }
            }
            steps {
                dir("${env.TF_DIR}") {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply/Destroy') {
            steps {
                echo "⚙️ Running: terraform ${params.action} ..."
                dir("${env.TF_DIR}") {
                    sh "terraform ${params.action} -auto-approve"
                }
            }
        }
    }

    post {
        success {
            echo "✅ Terraform ${params.action} completed successfully."
        }
        failure {
            echo "❌ Terraform ${params.action} failed."
        }
    }
}
