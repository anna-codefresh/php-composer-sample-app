#!/bin/bash

USER=root
HOST=192.81.218.202
PASSWORD=Loveme23

echo | ssh-keygen -P '' -t rsa
spawn ssh-copy-id $USER@$HOST
expect "Are you sure you want to continue connecting (yes/no)?"
send "yes\r"                                                                                                    
scp -i /root/.ssh/id_rsa -r php-composer-sample-app $USER@$HOST:/home
