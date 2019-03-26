incron-openfire-letsencrypt


* place watch files that should run as _ROOT_ in the _incron.d_ folder
* place watch files that should run as the unprivileged user _icuser_ in _incron_ folder
* place scripts run by watch files in the _scripts_ folder
* add bind mounts of watched folders and target folders to docker-compose under _individual bind mounts_
* add environmental stuff like folder names which are used by scripts inside the container in new variables in _docker-compose.yml_ and _incron-app.conf_

Current config watches _/srv/docker/letsencrypt/jabber.example.com_ and runs the _install-openfire-certs.sh_ script on changes which copies all files to
_/srv/docker/openfire/data/conf/security/hotdeploy/_ and sets the appropriate ownership to it.  

A demo is installed for the non root user that is monitoring /tmp running test.sh on any changes. 
