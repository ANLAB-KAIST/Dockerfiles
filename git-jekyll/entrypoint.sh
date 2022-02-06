#!/bin/sh

if [ ! -f "/root/.ssh/id_ed25519" ]; then
    ssh-keygen -t ed25519 -f /root/.ssh/id_ed25519 -N ""
fi

echo "My Public Key:"
cat /root/.ssh/id_ed25519.pub

GIT_SLEEP="${GIT_SLEEP:-1m}"

if [ ! -d "/data/.git" ]; then
    echo $GIT_REPO
    git clone $GIT_REPO /data
fi

cd /data || exit
while true
do
    git pull
    $@
    sleep $GIT_SLEEP
done