pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')
    }

    stages  {
        stage('Test') {
            steps {
                sh '/opt/puppetlabs/pdk/bin/pdk validate'
            }
        }
    }
}
