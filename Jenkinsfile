pipeline {

    agent {
        any
        /* dockerfile true */ 
    }

    stages {
        stage("publish to nexus") {
            steps {
                script {
                    docker.withRegistry('http://nexus:8085', 'admin') {

                        def customImage = docker.build("epam-app:${env.BUILD_ID}")

                        /* Push the container to the custom Registry */
                        customImage.push()
                    }
                }
            }
        }
    }
}
