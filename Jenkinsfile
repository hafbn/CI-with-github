pipeline { 
    agent any 

    stages {
        
        stage('Build') { 
            steps { 
                bat 'pip install -r requirements.txt'
                bat 'docker build -t image2 .'
            }
        }
        stage('Test'){
            steps {
                bat 'python -m unittest' 
            }
        }
        stage('Deploy') {
            steps {
                bat 'docker run -d image2'
            }
        }
    }
}