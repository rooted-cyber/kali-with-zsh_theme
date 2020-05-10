setup () {
	printf "\n\033[1;92m Installing Requirements..\n\n"
	apt update
	apt upgrade
	apt install python
	apt install figlet
	apt install git
	apt install wget
	apt install zsh
	apt install curl
	printf "\n\033[1;92m All installed\n"
	sleep 3
	clear
	cd /bin
	echo "#!/data/data/commtermux/files/usr/bin/sh" >> zsh-kali
	echo "bash ~/kali-with-zsh_theme/kali-install.sh" >> zsh-kali
	chmod 777 zsh2
	printf "\n\n\033[1;92m Now you can use :- zsh-kali\n"
	}