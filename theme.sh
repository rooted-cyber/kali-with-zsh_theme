R () {
	cd $PREFIX/bin
	if [ -e python ];then
	python ~/kali-with-zsh_theme/.random.py
	else
	pkg install python
	python ~/kali-with-zsh_theme/.random.py
	fi
	}
	fol() {
		cd ~/kali-with-zsh_theme
		}
		ban() {
			R
			figlet Kali-Theme
			echo
			}
			th () {
				cd ~
				if [ -e ~/kali-fs/root ];then
				fol
				#cd /sdcard/Github/kali*
				cd theme
				read
				cp -f kali $PREFIX/bin
				chmod 700 $PREFIX/bin/kali
				cp -f .p10k.zsh ~/kali-fs/root
				cp -f .bashrc ~/kali-fs/root
				cp -f .zshrc ~/kali-fs/root
				bash start.sh
				else
				fol
				cp -f kali.sh ~
				cd ~
				bash kali.sh
				fi
				}
			menu2() {
				ban
				printf "\n\n\033[1;93m Please wait for setuping theme… .\n\n"
				fol
				th
				}
				menu2