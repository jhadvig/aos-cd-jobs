node('master') {
    stage('Build') {
        git changelog: false, poll: false, url: 'https://github.com/openshift/origin'
        sh 'make clean build'
    }
}