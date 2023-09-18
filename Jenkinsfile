node {
    checkout scm

    stage('Build image') {
        withDockerRegistry([ credentialsId: "dockerhub-laurence", url: "" ]) {
            dockerImage = docker.build("laurencehr/minecraft:1.20.1")
        }       
    }

    stage('Push image') {
        docker.withRegistry("","dockerhub-laurence") {
            dockerImage.push()            
        }    
    }
}