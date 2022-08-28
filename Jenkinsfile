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
                ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'Ansible2', inventory: 'test.inv', playbook: 'job1.yaml'
                }
            }
            
      stage('job2) {
            steps {
                ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'Ansible2', inventory: 'test.inv', playbook: 'job2.yaml'
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
