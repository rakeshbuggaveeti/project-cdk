def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-cdk-setup']]

pipeline {
    agent {
         dockerfile true
    }
    environment {
        AWS_REGION = 'eu-west-1'
        HOME = '.'
    }
    options {
        disableConcurrentBuilds()
        parallelsAlwaysFailFast()
        timestamps()
        withCredentials(awsCredentials)
    }
    stages {
          
          stage('Deploy') {
            steps {
              sh "echo 'Succesfully deployed'"
            }
          }
          

    }
    
    post {
      always {
        cleanWs()
      }
    }
}