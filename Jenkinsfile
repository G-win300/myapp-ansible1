pipeline {
    agent { label 'my_slave'}

    stages {
        stage('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/G-win300/myapp-ansible1'
            }
        }
      
      stage('job1) {
            steps {
              
            }
            }
        
        stage('build') {
            steps {
               sh 'sudo docker build -t my-app-28082022:$BUILD_NUMBER .'
               sh 'sudo docker run -d my-app-28082022:$BUILD_NUMBER'
            }
        }
        
    }
}
