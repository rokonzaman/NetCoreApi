pipeline {
 agent{
     label "kubernetes"
 }
  stages {
    stage('build_image') {
   steps {
	sh "docker build -t rokonzaman/dotnetproject /root/jenkins_agent/workspace/netcoreapi_multibranch_master/."
   }
  }
 }
}