pipeline {
  agent any
  stages {
    stage('编译执行单元测试') {
      steps {
         echo "test"
         sh "${env.WORKSPACE}/builder.sh build"
      }
    }

    stage('发布') {
      steps {
        sh "${env.WORKSPACE}/builder.sh deploy"
      }
    }
  }
}