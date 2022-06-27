pipeline {
  agent {
    label 'TestingNode'
  }
  environment {
		DOCKERHUB_CREDENTIALS=credentials('DockerHub')
	}

    options {
    skipDefaultCheckout()
  }
  stages {
    stage('SCM checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git_credentials', url: 'https://github.com/Manjunathmba/devops_webapp.git']]])
        sh 'ls -lrt'
      }
    }

    stage('Generate Image') {
      steps {
        sh '''sudo docker build . -t manjunathba/custom_webapp_image
              sudo docker images'''
      }
    }
    stage('Push Image') {
      steps {
        sh '''echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR  --password-stdin
	      docker push manjunathba/custom_webapp_image'''
      }
    }

  }
  post {
             success {
                          build 'ProductionBuild'
                     }
      }
     
    }

}
