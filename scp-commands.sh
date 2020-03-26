#!/bin/bash

USER=root
HOST=192.81.218.202

echo | ssh-keygen -P '' -t rsa
ssh-copy-id $USER@$HOST
scp -i /root/.ssh/id_rsa -r php-composer-sample-app $USER@$HOST:/home
