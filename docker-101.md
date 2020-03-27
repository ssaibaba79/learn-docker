# Docker 101

## Basic Commands
Pull the latest tag of an image from default docker repo (hub.docker.com)
```
docker pull nginx 
```
Pull a specific tag of image
```
docker pull nginx :1.17
```
List all local images 
```
docker image ls
```

Create and run containers with specificed host/virtual port, name and run in background.

```
docker container run --publish 80:80 --detach --name proxy nginx
```
OR
```
docker container run -p 8080:80 -d --name webserver httpd
```
Create and run a Apache Webserver on port 8080
```
docker container run --publish 8080:80 --detach --name webserver httpd
```
Create and run a mysql container on port 3306 with and environment variable value
```
docker container run --publish 3306:3306 --detach --name db --env MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
```
List running containers
```
docker container ls
```

List all containers
```
docker container ls -a
```

Inspect log for a running container

``` 
docker container logs proxy
```
Inspect and follow logs for a running container

```
docker container logs -f proxy  
```

View the processes running within the container
```
docker container top proxy
```
Stop a running container
```
docker container stop proxy
```
Start a container
```
docker container start proxy
```
Restart a container
```
docker container restart proxy
```

Remove a non-running container 
```
docker container rm proxy
```

Remove a container even if it is running ( force)
```
docker container rm proxy
```

Remove all unused containers (-f force)
```
docker container prune -f  
```
Remove a image
```
docker image rm nginx
```

Remove all unused images ( -f force)

```
docker image prune -f
```

## Sample scripts

| OS          | Sample scripts      |
| ----------- | ----------- |
| Windows     | [docker-101,bat](docker-101.bat)       |
| Linux       | [docker-101,sh](docker-101.sh )        |
