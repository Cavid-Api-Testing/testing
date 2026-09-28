pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo 'GitHub-dan kodlar çəkilir...'
            }
        }

        stage('Run API Tests') {
            steps {
                // Əgər newman yoxdursa npm ilə yükləyirik və işlədirik
                sh 'npm install -g newman newman-reporter-htmlextra || true'
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