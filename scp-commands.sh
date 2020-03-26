#!/bin/bash

USER=root
HOST=192.81.218.202
PASSWORD=Loveme23

echo | ssh-keygen -P '' -t rsa
yes yes | ssh-copy-id $USER@$HOST
scp -i /root/.ssh/id_rsa -r php-composer-sample-app $USER@$HOST:/home
