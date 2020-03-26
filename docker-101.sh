#####################################################################
# Docker 101 - Assignment 1
#####################################################################

# Pull images of latest Nginx, Apache and Mysql, create and run containers with 
# specificed host/virtual port and name detached.

echo "################  Pulling images, creating and running containers ..."
# pull and run nginx on 80
docker container run --publish 80:80 --detach --name proxy nginx

# pull and run apache on 8080
docker container run --publish 8080:80 --detach --name webserver httpd

# pull and run mysql 3306 with an enviromnent variable value passed in.
docker container run --publish 3306:3306 --detach --name db --env MYSQL_RANDOM_ROOT_PASSWORD=yes mysql

echo "################ Containers started"
# List running container
docker container ls

curl -v http://localhost:80
curl -v http://localhost:8080

# Inspect log for a running container
docker container logs proxy
# follow logs
#docker container logs -f nginx  

# View Processes on the container
docker container top proxy

echo "################ Stopping containers "
# Stop a running containers
docker container stop proxy
docker container stop webserver
docker container stop db

# List all containers
docker container ls -a

echo "################ Removing containers"
# Remove a container 
docker container rm proxy
docker container rm webserver
docker container rm db

docker container ls -a

echo "################ Listing images ..."
# List images 
docker image ls

echo "################ Pulling latest image for Nginx"
# Pull a latest image
docker image pull nginx

echo "################ Removing images.."
# Remove a image
docker image rm nginx
docker image rm httpd
docker image rm mysql

docker image ls
echo "################ Cleanup complete."