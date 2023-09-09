pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: '1cfbad68-3d20-4bf0-8dcc-3bef87442fca', url: 'https://github.com/deltablue-cloud/nodejs-react-hello-world.git'
            }
        }
        stage('Build and Run') {
            steps {
                sh 'npm install'
                
                sh 'nohup npm run start > start.log 2>&1 &'
                
                sh 'nohup npm run build > build.log 2>&1 &'
            }
        }
    }
}
