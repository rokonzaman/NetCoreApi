pipeline {
 agent{
     label "ansible"
 }
 environment {
  dotnet = '/usr/share/dotnet/sdk/2.2.402/'
 }
 stages {
  stage('Checkout') {
   steps {
    git credentialsId: 'github-credentials', url: 'https://github.com/rokonzaman/netcore.git', branch: '*'
   }
  }
 stage('Restore packages'){
   steps{
      sh "dotnet restore /home/node2/jenkins/workspace/coreapi/netcore-api.csproj.user"
   }
  }
  stage('Clean'){
   steps{
      sh "dotnet clean /home/node2/jenkins/workspace/coreapi/netcore-api.sln"
   }
  }
  stage('Build'){
   steps{
      sh "dotnet build /home/node2/jenkins/workspace/coreapi/netcore-api.sln"
   }
  }
  stage('Test'){
   steps{
      sh "dotnet test /home/node2/jenkins/workspace/coreapi/netcore-api.sln"
   }
  }
  stage('Publish'){
   steps{
      sh "dotnet publish /home/node2/jenkins/workspace/coreapi/netcore-api.sln"
   }
  }
 }
}
