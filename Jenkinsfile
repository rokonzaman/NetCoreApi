pipeline {
 agent{
     label "kubernetes"
 }
  stages {
  stage('Checkout') {
   steps {
    git(
       url: 'https://github.com/rokonzaman/netcoreapi.git',
       credentialsId: 'github-credentials',
       branch: "${branch}"
    )
   }
  }
  stage('build_image') {
   steps {
	sh "docker build -t rokonzaman/dotnetproject /root/jenkins_agent/workspace/."
   }
  }
 }
}