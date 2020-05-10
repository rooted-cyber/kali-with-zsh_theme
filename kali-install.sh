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
			kali-zsh () {
				fol
				cp kali.sh ~
				bash kali.sh
				fol
				bash theme.sh
				}
			menu () {
				clear
				ban
				echo -e -n "\033[1;96m You want install kali with zsh theme\033[1;93m(\033[1;94my|N\033[1;93m) "
				read b
				case $b in
				y|Y)kali-zsh ;;
				n|N)exit ;;
				*)menu ;;
				esac
				}
				cd $PREFIX/bin
				if [ -e zsh-kali ];then
				menu
				else
				fol
				bash setup.sh
				fi