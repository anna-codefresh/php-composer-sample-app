#!/bin/bash

USER=root
HOST=192.81.218.202
PASSWORD=Loveme23

echo | ssh-keygen -P '' -t rsa
ssh-copy-id $USER@$HOST
spawn step-commands.sh
expect "Are you sure you want to continue connecting (yes/no)?"
send "yes"                                                                                                    
scp -i /root/.ssh/id_rsa -r php-composer-sample-app $USER@$HOST:/home
