pipeline {
  agent {
    label 'ProductionNode'
  }
  stages {
    stage('SCM checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git_credentials', url: 'https://github.com/Manjunathmba/devops_webapp.git']]])
        sh 'ls -lrt'
      }
    }

    stage('Deploy Image') {
      steps {
        sh '''sudo docker build . -t Manjunathba/custom_webapp_image
sudo docker images'''
      }
    }

  }
  options {
    skipDefaultCheckout()
  }
}