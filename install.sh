#!/usr/bin/env bash
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz 
tar zxpf luarocks-2.2.2.tar.gz 
cd luarocks-2.2.2 
./configure; sudo make bootstrap
sudo luarocks install luasocket 
sudo luarocks install luasec 
sudo luarocks install redis-lua 
sudo luarocks install ansicolors
sudo luarocks install serpent 
cd ..
sudo apt-get update
sudo chmod 777 launch.sh
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN}Installation Completed! Create a bot with launch(./launch.sh)${NC}"
exit
