pipeline {
    agent { label 'my_slave'}

    stages {
        stage('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/G-win300/myapp-ansible1'
            }
        }
      
      stage('job1') {
            steps {
                ansiblePlaybook credentialsId: 'jenkins-private-key', disableHostKeyChecking: true, installation: 'Ansible2', inventory: 'test.inv', playbook: 'job1.yaml'
                }
            }
            
      stage('job2') {
            steps {
                ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'Ansible2', inventory: 'test.inv', playbook: 'job2.yaml'
                }
            }
        
        stage('job3') {
            steps {
               sh 'sudo docker build -t myapp-V$BUILD_TIMESTAMP:$BUILD_NUMBER .'
               sh 'sudo docker run -d myapp-V$BUILD_TIMESTAMP:$BUILD_NUMBER'
            }
        }
        
    }
}
