
### # BASIC  

docker-compose start
docker-compose stop

docker-compose pause
docker-compose unpause

docker-compose ps
docker-compose up
docker-compose down


### # COMPOSE

docker-compose up -d


### # IMAGES

docker rmi -f $(docker images -q)
docker rmi $(docker images -aq -f 'dangling=true')
docker image prune


docker-compose down -v --rmi all --remove-orphans

### # CONTAINER  

docker container ls
docker inspect container_Id | grep IPAddress
docker kill container_id
docker exec -it container_id bash
docker container prune


### # VOLUMES 

docker volume inspect my_volume

#### Cleaning Volumes  

docker volume prune  
volume rm -f $(docker volume ls -q)  

### # NETWORK
 
docker network ls  
docker network prune

$ docker rm -v $(docker ps -aq -f 'status=exited')
docker network rm $(docker network ls -q)
docker-compose down --rmi local (to remove network)


##### ATTENTION: this will also remove volumes of docker-compose if the containers are barely stopped
$ docker volume rm $(docker volume ls -q -f 'dangling=true')

docker system prune --all --force



