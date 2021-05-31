pipeline{
   agent any
  tools {
      maven 'maven3'
  }
  stages {
    
    stage(build maven project){
    
      steps{
      
        sh scrpit: sh mvn clean package 
      }
    }
  
  }


}
