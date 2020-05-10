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
	echo "#!/bin/sh" >> zsh2
	echo "bash ~/zsh-theme-for-Os/zsh.sh" >> zsh2
	chmod 777 zsh2
	printf "\n\n\033[1;92m Now you can use :- zsh2\n"
	}
	g() {
		cd $PREFIX/bin
		if [ -e python ];then
		echo -e "\033[1;92m Done"
		else
		echo -e "\033[1;93m Installing...."
		pkg install python > /dev/null 2>&1
		printf "\033[1;93m Done\n\n"
		fi
		}
		f() {
		cd $PREFIX/bin
		if [ -e figlet ];then
		echo -e "\033[1;92m Done"
		else
		echo -e "\033[1;93m Installing...."
		pkg install figlet
		printf "\033[1;93m Done\n\n"
		fi
		}
		set() {
			printf "\n\n\033[1;96m Checking python "
			g
			printf "\033[1;96m \n\n Checking Figlet"
			f
			printf "\033[1;96m Wget [ w ]\n\n"
			}
			set