#!/bin/bash
echo -en "\n** It may take some time! We are preparing the environment for you! **\n\n" 
sudo /usr/bin/docker run --cap-add SYS_ADMIN -it sealer /bin/bash
exit
