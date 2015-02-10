Slave with Heroku toolbelt

Does not work yet with current docker-jenkins-slave plugin as it needs to export API_KEY with the proper Heroku credentials and the actual plugin version (0.8) does not allow to do so. Should be ok with 0.9 though.

You need to launch the container using /usr/bin/entrypoint.sh and export API_KEY to your heroku api key