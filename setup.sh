#!/data/data/com.termux/files/usr/bin/bash env

#Update and upgrade
pkg up -y && pkg upgrade -y

#Switch permissive
su -c 'setenforce 0'

#Install dependencies
time apt install ruby pv toilet tsu git wget screenfetch figlet -y

#Install LOLCat via Ruby's package manager
gem install lolcat

#Fetch the script and setup
tsudo "wget https://raw.githubusercontent.com/harvien29/pubg/master/Harvieno -O ./Harvieno"
tsu -c 'chmod a+x Harvieno'
tsu -c ./Harvieno
