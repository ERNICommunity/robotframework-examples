docker stop openssh-server
if [ $? != 0 ]
then
docker create \
  --name=openssh-server \
  --hostname=openssh-server `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Zuerich \
  -e SUDO_ACCESS=false `#optional` \
  -e PASSWORD_ACCESS=true `#optional` \
  -e USER_PASSWORD=edd2001 `#optional` \
  -e USER_NAME=user `#optional` \
  -p 2222:2222 \
  --restart unless-stopped \
  linuxserver/openssh-server
fi

docker start openssh-server
