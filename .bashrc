cd /bin
if [ -e zsh ];then
zsh
else
clear
printf "\n\n \033[1;92mInstalling zsh… \n"
apt update
apt upgrade
apt install zsh
fi