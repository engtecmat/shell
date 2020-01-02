#!/bin/sh
cd /opt/assistant/
pwd
git fetch
cnt=`git diff master...origin/master | wc -l`
if [ $cnt -gt 0 ]
then
  git pull --rebase
  ./gradlew clean build -x test
  sudo docker build --rm=true -t assistant .
  sudo docker stop assistant
  sudo docker rm assistant
  sudo docker run -p 8080:8080 -e TZ=GMT+8 -d --name assistant assistant
  sudo docker rmi $(sudo docker images -f "dangling=true" -q)
  cd /opt/
fi
