pipeline {
  agent any
  tools {
        // maven 'maven-3.6.3'
        // jdk 'jdk8'
        oc 'oc'
    }

    environment{
        CLUSTER_NAME = "RedCloud"
        DEV_PROJECT = "minecraft-dev"
        TEST_PROJECT = "minecraft-test"
        PROD_PROJECT = "minecraft-prod"
    }

  stages {
        stage('Create') {
            steps {
                script {
                    openshift.withCluster("${env.CLUSTER_NAME}") {
                        openshift.withProject("${env.PROJECT_NAME}") {

                        } // PROJECT_NAME
                    } // CLUSTER_NAME
                } // script
            } // steps
        } // stage

    stage('Build App') {
      steps {
        // git branch: "${env.GIT_BRANCH}", url: "${env.GIT_URL}"
        // sh "${mvnCmd} install -DskipTests=true"
        sh '''
            echo "${PROJECT_NAME}"
        '''
      }
    }
    stage('Test') {
      steps {
        // sh "${mvnCmd} test"
        //step([$class: 'JUnitResultArchiver', testResults: '**/target/surefire-reports/TEST-*.xml'])
                sh '''
            echo "Test Phase"
        '''
      }
    }
    // stage('Code Analysis') {
    // //   steps {
    //     // script {
    //     //   sh "${mvnCmd} sonar:sonar -Dsonar.host.url=http://sonarqube-cicd-project1.apps.cluster-mum-cd64.mum-cd64.example.opentlc.com -DskipTests=true"
    //     // }
    // //   }
    // }
    // stage('Archive App') {
    // //   steps {
    //     // sh "${mvnCmd} deploy -DskipTests=true -P nexus3"
    // //   }
    // }
    // stage('Build Image') {
    // //   steps {
    //     // sh "cp target/openshift-tasks.war target/ROOT.war"
    //     // script {
    //     //   openshift.withCluster("${env.CLUSTER_NAME}") {
    //     //     openshift.withProject("${env.DEV_ENV}") {
    //     //       openshift.selector("bc", "microservice-app").startBuild("--from-file=target/microservice-app-1.0.0-SNAPSHOT.jar", "--follow", "--wait=true")
    //     //     }
    //     //   }
    //     // }
    // //   }
    // }
    // stage('Deploy DEV') {
    // //   steps {
    //     // script {
    //     //   openshift.withCluster("${env.CLUSTER_NAME}") {
    //     //     openshift.withProject("${env.DEV_ENV}") {
    //     //       openshift.selector("dc", "microservice-app").rollout().latest();
    //     //     }
    //     //   }
    //     // }
    // //   }
    // }
    // stage('Promote to STAGE?') {
    // //   steps {
    // //     timeout(time:15, unit:'MINUTES') {
    // //         input message: "Promote to STAGE?", ok: "Promote"
    // //     }

    // //     script {
    // //       openshift.withCluster("${env.CLUSTER_NAME}") {
    // //       openshift.withProject("${env.DEV_ENV}") {
    // //           openshift.tag("${env.DEV_ENV}/microservice-app:latest", "${STAGE_ENV}/microservice-app:stage")
    // //         }
    // //       }
    // //     }
    // //   }
    // }
    // stage('Deploy STAGE') {
    // //   steps {
    // //     script {
    // //       openshift.withCluster("${env.CLUSTER_NAME}") {
    // //         openshift.withProject("${STAGE_ENV}") {
    // //           openshift.selector("dc", "microservice-app").rollout().latest();
    // //         }
    // //       }
    // //     }
    // //   }
    // }
  }
}
