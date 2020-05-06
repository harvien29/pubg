#!/data/data/com.termux/files/usr/bin/bash

pkg up -y && pkg upgrade -y

su -c 'setenforce 0'

time apt install ruby pv toilet tsu git wget screenfetch figlet -y

gem install lolcat

wget https://raw.githubusercontent.com/harvien29/pubg/master/Harvieno -O ./Harvieno
chmod a+x Harvieno
tsu -c ./Harvieno
