#!/bin/bash

sed -i 's/_ip: 127.0.0.1/_ip: db/g' ./conf/inter_athena.conf
echo "Formart file" 
dos2unix -f configure 
dos2unix -f athena-start 
dos2unix -f function.sh 
echo "Giving permissions" 
chmod a+x athena-start 
chmod a+x configure 
chmod a+x function.sh 
echo "Stop the server if it is started" 
./athena-start stop 
echo "Run the configure script" 
./configure 
 echo "Finally compile Emulator" 
./configure --enable-packetver=20200401 && make clean server 
 echo "Start server" 
./athena-start start


# sed -i 's/login_ip: serve///login_ip: 127.0.0.1/g' ./conf/char_athena.conf
# sed -i 's/char_ip: 127.0.0.1///char_ip: 127.0.0.1/g' ./conf/char_athena.conf
# sed -i 's/char_ip: serve///char_ip: 127.0.0.1/g' ./conf/inter_athena.conf
# sed -i 's/map_ip: 127.0.0.1///map_ip: 127.0.0.1/g' ./conf/inter_athena.conf

echo "SUCESSOOOOOOOO !!!!!!!!!!!!!"
while [ 1 ]; do
    /bin/bash
done