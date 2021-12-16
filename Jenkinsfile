pipeline {

agent {
  node { label 'master' }
}
tools {
      oc 'oc'
  }
environment {
    PROJECT_NAME = "nodejs"
    CLUSTER_NAME = "RedCloud"
    // GIT_URL = "https://github.com/ocpdude/minecraft"
    } 
            stages {
                stage('preamble') {
                    steps {
                        script {
                            openshift.withCluster(CLUSTER_NAME) {
                                openshift.withProject(PROJECT_NAME) {
                                    echo "Using project: ${(env.PROJECT_NAME)}"
                                }
                            }
                        }
                    }
                }
                stage('cleanup') {
                    steps {
                        script {
                            openshift.withCluster(env.CLUSTER_NAME) {
                                openshift.withProject(env.PROJECT_NAME) {
                                    echo "Using project: ${(env.PROJECT_NAME)}"
                                }
                            }
                        } // script
                    } // steps
                } // stage
                stage('create') {
                    steps {
                        script {
                            openshift.withCluster(env.CLUSTER_NAME) {
                                openshift.withProject(env.PROJECT_NAME) {
                                    echo "Using project: ${(env.PROJECT_NAME)}"
                                }
                            }
                        } // script
                    } // steps
                } // stage
                stage('build') {
                    steps {
                        script {
                            openshift.withCluster("${env.CLUSTER_NAME}") {
                                openshift.withProject("${env.PROJECT_NAME}") {
                                    echo "Using project: ${(env.PROJECT_NAME)}"
                                }
                            }
                        } // script
                    } // steps
                } // stage
                stage('deploy') {
                    steps {
                        script {
                            openshift.withCluster("${env.CLUSTER_NAME}") {
                                openshift.withProject("${env.PROJECT_NAME}") {
                                    echo "Using project: ${(env.PROJECT_NAME)}"
                                }
                            }
                        } // script
                    } // steps
                } // stage
                stage('tag') {
                    steps {
                        script {
                            openshift.withCluster("${env.CLUSTER_NAME}") {
                                openshift.withProject("${env.PROJECT_NAME}") {
                                    echo "Using project: ${(env.PROJECT_NAME)}"
                                }
                            }
                        } // script
                    } // steps
                } // stage
            } // stages
        } // pipeline
