pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo 'GitHub-dan kodlar çəkilir...'
            }
        }

        stage('Run API Tests in Docker') {
            steps {
                sh 'docker run --rm -v "$PWD:/etc/newman" postman/newman run collection.json -e environment.json'
            }
        }
    }

    post {
        always {
            echo 'Test icrası yekunlaşdı!'
        }
    }
}