pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')
    }

    stages  {
        stage('Test') {
            steps {
                sh 'find manifests -name *.pp -exec /opt/puppetlabs/bin/puppet parser validate {} +;'
            }
        }
    }
}
