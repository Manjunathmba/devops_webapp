pipeline 
{
  agent any
    options 
  {
    skipDefaultCheckout()
  }
  stages {
    stage('SCM checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git_credentials', url: 'https://github.com/Manjunathmba/devops_webapp.git']]])
        sh 'ls -lrt'
      }
    }
  }
}
