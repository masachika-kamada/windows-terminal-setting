function setting(){
  notepad $profile
}

# --- Docker --- #
function di(){
  docker images
}
function dp(){
  docker ps
}
function dpa(){
  docker ps -a
}
function psa(){
  docker ps -a
}
function dcur(){
  docker container ls -f status=running -l -q
}
function de(){
  docker exec -it $(dcur) bash
}
function desh(){
  docker exec -it $(dcur) sh
}
function dstart(){
  docker start $args
}
function dstop(){
  docker stop $(dcur)
}

function drm(){
  docker rm $args
}

function drmi(){
  docker rmi $args
}

function dcu(){
  docker-compose up $args
}

Set-Alias d docker

# --- Git ---#
function gadd(){
  git add .
}
function gcom(){
  git commit -m $args
}
function grem(){
  git remote add origin $args
}
function gpush(){
  git push
}
function gpushu(){
  git push -u origin main
}
function gnewb(){
  git checkout -b  $args
}
function grmb(){
  git branch -d $args
}
function gstash(){
  git stash
}
function gstashp(){
  git stash pop
}
function gbranchsync(){
  git fetch --prune
}
function grmcommit(){
  git reset --soft HEAD^
}

# --- General ---#
function ll(){
  Get-ChildItem -force
}
function tar(){
  tar -xzf $args
}
function search(){
  grep $args * -r
}
function remove-dir(){
  Remove-Item -Path $args -Recurse -Force
}
function edit(){
  notepad $args
}

# --- Anaconda ---#
function conda(){
  # 1. anaconda promptで `conda init powershell` を実行
  # 2. Document/WindowsPowerShell/profile.ps1が生成される
  # 3. 中身をコピーして以下のように貼り付け、profile.ps1を削除
  (& "C:\Users\MK\Anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
}
function cond(){
  conda deactivate
}
function cac(){
  conda activate $args
}
function ccre(){
  conda create -n $args
}
function crem(){
  conda remove -n $args --all
}
function cinf(){
  conda info -e
}
function pup(){
  pip install -U $args
}
