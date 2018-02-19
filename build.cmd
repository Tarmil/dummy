echo %GIT_BRANCH%
powershell -command "& { (New-Object Net.WebClient).DownloadFile('http://intellifactory.com:8080/jnlpJars/jenkins-cli.jar', 'jenkins-cli.jar') }"
java -jar jenkins-cli.jar set-build-result unstable
