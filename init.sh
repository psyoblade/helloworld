#!/bin/bash

course=""
if [[ $# -ne 1 ]]; then
    echo "./init.sh [basic|intermediate]"
    exit 1
fi

if [[ $1 == "basic" ]] || [[ $1 == "intermediate" ]]; then
    course=$1
else
    echo "./init.sh [basic|intermediate]"
    exit 2
fi

echo "Welcome to LGDE $course Course"

# tree 도구를  설치합니다
sudo apt update && apt install -y tree

# rc 파일을 복사합니다
cp rc/.vimrc ~/
cp rc/.screenrc ~/

# docker-compose 명령어의 alias 를 등록합니다
echo "alias d=\"docker-compose\"" >> ~/.bashrc
echo "export EDITOR=\"vim\"" >> ~/.bashrc

# course 이름 변수를 등록합니다
echo "export course=\"${course}\"" >> ~/.bashrc

source ~/.bashrc
