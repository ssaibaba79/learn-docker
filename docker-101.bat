@rem ******************************************************************************
@rem               DOCKER 101
@rem ******************************************************************************

@rem Pull images of latest Nginx, Apache and Mysql, create and run containers with 
@rem specificed host/virtual port and name detached.

@rem Pull a image from docker repo
docker pull nginx

@rem pull and run nginx on 80
docker container run --publish 80:80 --detach --name proxy nginx

@rem pull and run apache on 8080
docker container run --publish 8080:80 --detach --name webserver httpd

@rem pull and run mysql 3306 with an enviromnent variable value passed in.
docker container run --publish 3306:3306 --detach --name db --env MYSQL_RANDOM_ROOT_PASSWORD=yes mysql

@rem List running container
docker container ls

curl -v http://localhost:80
curl -v http://localhost:8080

@rem Inspect log for a running container
docker container logs proxy
@rem follow logs
@rem docker container logs -f proxy

@rem View Processes on the container
docker container top proxy

@rem Stop a running containers
docker container stop proxy
docker container stop webserver
docker container stop db

@rem List all containers
docker container ls -a

@rem @remove a container 
docker container rm proxy

@rem @remove unused containers
docker container prune -f

@rem @remove a image
docker image rm nginx
docker image rm mysql
docker image rm httpd

