// vi: ft=groovy
pipeline {
	agent any
	stages {
		stage('Build Plugins') {
			steps {
				sh 'mkdir -p out/ && make INSTDIR=out install'
			}
		}
	}
	post {
		always {
			archiveArtifacts artifacts: 'out/*', fingerprint: false
		}
	}
}
