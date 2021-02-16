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
              docker 'run $IMAGE.ID cdk deploy --require-approval=never'
            }
          }
          

    }
    
    post {
      always {
        cleanWs()
      }
    }
}