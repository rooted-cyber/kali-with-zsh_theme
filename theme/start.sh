R () {
	cd $PREFIX/bin
	if [ -e python ];then
	cd ~/kali-with-zsh_theme
	python .random.py
	else
	pkg install python
	python ~/kali-with-zsh_theme/.random.py
	fi
	}
	fl () {
		cd ~/kali-fs/root
		}
	ba() {
		R
		figlet kali-zsh
		echo
		}
		auto() {
			R
			fl
			mkdir .plugin
			cd .plugin
			printf "\n\nPlease wait for cloning..\n"
			git clone https://github.com/zsh-users/zsh-autosuggestions > /dev/null 2>&1
			git clone https://github.com/zsh-users/zsh-syntax-highlighting > /dev/null 2>&1
			R
			printf "\nCloning successfull\n\n"
			}
			tr() {
				cd ~
				if [ -e .termux ];then
				R
				cd ~/.termux
				printf "\nDownloading font� \n\n"
				wget https://raw.githubusercontent.com/rooted-cyber/good/master/zsh/font.ttf
				R
				printf "\n Seccessfully download\n"
				else
				R
				mkdir ~/.termux
				cd ~/.termux
				printf "\nDownloading font� \n\n"
				wget https://raw.githubusercontent.com/rooted-cyber/good/master/zsh/font.ttf
				R
				printf "\n Seccessfully download\n"
				fi
				}
			setuping-theme() {
				R
				printf "\n\nSetuping theme please wait..\n\n"
				#cd ~
				#wget https://raw.githubusercontent.com/rooted-cyber/good/master/zsh/.zshrc > /dev/null 2>&1
				#wget https://raw.githubusercontent.com/rooted-cyber/good/master/zsh/.p10k.zsh > /dev/null 2>&1
				tr
				}
				chp() {
			 cd ~/kali-fs/root
			 if [ -e powerlevel10k ];then
			 R
			 printf "Successfully cloning powerlevel10k\n\n"
			 else
			 printf "\n\n\033[1;91m Sorry not install powerlevel10k !!\n\n"
			 exit
			 fi
			 }
			 cho() {
			 	cd ~/kali-fs/root
			 	if [ -e .oh-my-zsh ];then
			 	R
			 	printf "\n\nCloning successfull\n\n"
			 	else
			 	printf "\n\n\033[1;91m Not cloning please try again!!\n\n"
			 	exit
			 	fi
			 	}
			 ohmyzsh () {
			 	cd ~/kali-fs/root
			 	if [ -e .oh-my-zsh ];then
			 	R
			 	printf "\n\n Already installed oh-my-zsh\n\n"
			 	else
			 	R
			 	printf "\n\n Cloning oh-my-zsh\n"
			 	cd ~/kali-fs/root
			 	git clone https://github.com/ohmyzsh/ohmyzsh
			 	mv ohmyzsh .oh-my-zsh
			 	fi
			 	}
		menu2() {
			R
			printf "\n\n Installing..\n\n"
			R
			printf "\n cloning powerlevel10k approx. 75MB\n"
			sleep 1
			cd ~/kali-fs/root
			git clone https://github.com/romkatv/powerlevel10k
			chp
			ohmyzsh
			cho
			auto
			setuping-theme
			R
			printf "\nRestart termux \n"
			}
			menu2