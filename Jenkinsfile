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
                // Newman vasitəsilə HTML hesabatı yaradılır
                sh 'newman run collection.json -e environment.json -r cli,htmlextra --reporter-htmlextra-export newman/report.html --suppress-exit-code'
            }
        }
    }

    post {
        always {
            echo 'Test icrası yekunlaşdı! HTML Hesabat nəşr olunur...'
            
            // Yüklədiyimiz HTML Publisher plagini hesabatı burada menyuya çıxarır
            publishHTML(target: [
                allowMissing: false,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: 'newman',
                reportFiles: 'report.html',
                reportName: 'HTML API Test Report',
                reportTitles: 'Postman API Automation Results'
            ])
        }
    }
}