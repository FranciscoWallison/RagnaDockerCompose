#!/bin/bash

sed -i 's/_ip: 127.0.0.1/_ip: db/g' ./conf/inter_athena.conf &&
echo "Formart file" &&
dos2unix -f configure &&
dos2unix -f athena-start &&
dos2unix -f function.sh &&
echo "Giving permissions" &&
chmod a+x athena-start &&
chmod a+x configure &&
chmod a+x function.sh &&
echo "Stop the server if it is started" &&
./athena-start stop &&
echo "Run the configure script" &&
./configure &&
 echo "Finally compile Emulator" &&
 make clean server &&
 echo "Start server" &&
./athena-start start&&


# sed -i 's/_ip: 127.0.0.1/_ip: db/g' ./conf/inter_athena.conf
# sed -i 's/_ip: 127.0.0.1/_ip: db/g' ./conf/inter_athena.conf
# sed -i 's/_ip: 127.0.0.1/_ip: db/g' ./conf/inter_athena.conf

echo "SUCESSOOOOOOOO !!!!!!!!!!!!!"
while [ 1 ]; do
    /bin/bash
done
