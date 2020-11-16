#!/bin/bash

# tree 도구를  설치합니다
echo sudo apt update && apt install -y tree

# rc 파일을 복사합니다
echo cp rc/.vimrc ~/
echo cp rc/.screenrc ~/

# docker-compose 명령어의 alias 를 등록합니다
echo "alias d=\"docker-compose\"" >> ~/.bashrc
echo "export EDITOR=\"vim\"" >> ~/.bashrc
