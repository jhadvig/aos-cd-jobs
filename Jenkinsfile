node {
    echo 'Hello Mr.'
    echo "I said, Hello Mr."
    stage('Build') {
        git changelog: false, poll: false, url: 'https://github.com/openshift/origin'
        sh 'make clean build'
    }
}