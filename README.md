incron-openfire-letsencrypt


* place watch files in the _incorn.d_ folder
* place scripts run by watch files in the _scripts_ folder
* add bind mounts of watched folders and target folders to docker-compose under _individual bind mounts_
* add environmental stuff like folder names in new variables in _docker-compose.yml_ and _incron-app.conf_

Current config watches _/srv/docker/letsencrypt/jabber.example.com_ and runs the _install-openfire-certs.sh_ on changes which copies all files to
_/srv/docker/openfire/data/conf/security/hotdeploy/_ and sets the appropriate access ownership to it.  
