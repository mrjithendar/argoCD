pipeline {
    agent any

    // parameters {
    //     parameters { password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'A secret password') }
    //     parameters { choice(name: 'CHOICES', choices: ['one', 'two', 'three'], description: '') }
    //     parameters { booleanParam(name: 'DEBUG_BUILD', defaultValue: true, description: '') }
    //     parameters { text(name: 'DEPLOY_TEXT', defaultValue: 'One\nTwo\nThree\n', description: '') }
    //     parameters { string(name: 'DEPLOY_ENV', defaultValue: 'staging', description: '') }
    // }

    // environment {
    //     name = "jithendar"
    //     AWS  =  credentials('awskey')
    // }

    stages {
        // stage('terraform fmt perform') {
        //     steps {
        //         echo 'terraform formatting the configuration'
        //         sh '''
        //         terraform fmt
        //         git add .; git commit -m 'terraform fmt applied'; git push
        //         '''
        //     }
        // }
        stage('terraform validate') {
            steps {
                echo 'terraform -chdir=argocd validate'
                sh 'terraform validate'
            }
        }
        stage('terraform init') {
            steps {
                echo 'terraform init'
                sh 'terraform -chdir=argocd init -reconfigure'
            }
        }
        stage('terraform plan') {
            steps {
                echo 'terraform plan'
                sh 'terraform -chdir=argocd plan'
            }
        }
    }

}
