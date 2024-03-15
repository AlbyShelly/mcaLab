#!/bin/bash

sudo echo "#!/bin/bash" > /usr/bin/upld
sudo echo "curl -F file=@$1 http://0x0.st" >> /usr/bin/upld
sudo chmod +x /usr/bin/upld




