pipeline {
  agent any
  stages {
    stage('LOGIN EN EL REGISTRO') {
      steps {
        script { docker build -t imagen14 .
    }
     stage('CREACIÓN DEL SERVICIO/IMAGEN') {
      steps{
	sh('docker tag  imagen14 backend-develop/maven')
	sh('docker run -v *ruta del host*:*contenedor* backend-develop/maven')
      }
    }
  }
}

