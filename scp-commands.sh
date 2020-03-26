#!/bin/bash

USER=root
HOST=192.81.218.202
PASSWORD=Loveme23

echo | ssh-keygen -P '' -t rsa
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub -o StrictHostKeyChecking=no $USER@$HOST
echo $PASSWORD                                                          
scp -r php-composer-sample-app $USER@$HOST:/home
