// vi: ft=groovy
pipeline {
	agent any
	stages {
		stage('Build Plugins') {
			steps {
				sh 'mkdir -p out/ && make INSTDIR=out install'
				sh 'tar -C out -czvf plugins.tar.gz .'
			}
		}
	}
	post {
		always {
			archiveArtifacts artifacts: 'plugins.tar.gz', fingerprint: false
		}
	}
}
