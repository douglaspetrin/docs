# list ips from docker containers

getDockerIps(){
    for docker_image in $(docker ps --format '{{.Names}}'); do
        DOCKER_IP=$(docker inspect $docker_image | grep "IPAddress.*[0-9].*" | awk '{print $2}')
        echo $docker_image":"$DOCKER_IP
    done
}
alias dips=getDockerIps

alias my_alias="source /my_folder/bashExamples.sh"


# list repos and pull them


#!/bin/bash


function pullAllRepos() {

for repository in $(ls $1)
do
        cd $1 && cd repository && git pull && cd .. && sleep 5

done
}

read -p "Enter the path: " path

pullAllRepos $path
