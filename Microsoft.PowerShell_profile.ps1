function di(){
  docker images
}

function dp(){
  docker ps
}

function dpa(){
  docker ps -a
}

function dcur(){
  docker container ls -f status=running -l -q
}

function de(){
  docker exec -it $(dcur) bash
}

function dstart(){
  docker start $args
}

function dstop(){
  docker stop $(dcur)
}

Set-Alias d docker
