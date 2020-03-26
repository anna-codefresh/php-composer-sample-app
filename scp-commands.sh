#!/bin/bash

USER=root
HOST=192.81.218.202
PASSWORD=Loveme23

echo | ssh-keygen -P '' -t rsa
ssh-copy-id -i /root/.ssh/id_rsa.pub -o StrictHostKeyChecking=no $USER@$HOST
                                                                                                  
scp -r php-composer-sample-app $USER@$HOST:/home
