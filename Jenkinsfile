pipeline { 
    agent any 

    stages {
        
        stage('Build') { 
            steps { 
                bat 'pip install -r requirements.txt'
                bat 'docker build -t image1 .'
            }
        }
        stage('Test'){
            steps {
                bat 'echo pytest' 
            }
        }
        stage('Deploy') {
            steps {
                bat 'docker run -p 5000:5000 image1'
            }
        }
    }
}