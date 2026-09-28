pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo 'GitHub-dan son kodlar çəkilir...'
            }
        }

        stage('Run API Tests') {
            steps {
                sh 'newman run collection.json -e environment.json'
            }
        }
    }

    post {
        always {
            echo 'Test icrası yekunlaşdı!'
        }
    }
}