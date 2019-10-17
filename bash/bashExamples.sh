getDockerIps(){
    for docker_image in $(docker ps --format '{{.Names}}'); do
        DOCKER_IP=$(docker inspect $docker_image | grep "IPAddress.*[0-9].*" | awk '{print $2}')
        echo $docker_image":"$DOCKER_IP
    done
}
alias dips=getDockerIps

alias my_alias="source /my_folder/bashExamples.sh"