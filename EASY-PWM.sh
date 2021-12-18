#!/bin/bash

#Colors
green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"

export DEBIAN_FRONTEND=noninteractive

function banner(){
	tuput civis; clear
	echo -e "\n${green}███████${turquoise}╗${gray}░${green}█████${turquoise}${turquoise}╗${gray}░░${green}██████${turquoise}${turquoise}╗${green}██${turquoise}╗${gray}░░░${green}██${turquoise}╗${gray}░░░░░░${green}██████${turquoise}╗${gray}░░${green}██${turquoise}╗${gray}░░░░░░░${green}██${turquoise}╗${green}███${turquoise}╗${gray}░░░${green}███${turquoise}╗"
	sleep 0.05
	echo -e "${green}██${turquoise}╔════╝${green}██${turquoise}╔══${green}██${turquoise}╗${green}██${turquoise}╔════╝╚${green}██${turquoise}╗${gray}░${green}██${turquoise}╔╝${gray}░░░░░░${green}██${turquoise}╔══${green}██${turquoise}╗${gray}░${green}██${turquoise}║${gray}░░${green}██${turquoise}╗${gray}░░${green}██${turquoise}║${green}████${turquoise}${turquoise}╗${gray}░${green}████${turquoise}║\t\t      ${gray}BY ${purple}Invertebrado"
	sleep 0.05
	echo -e "${green}█████${turquoise}╗${gray}░░${green}███████${turquoise}║╚${green}█████${turquoise}╗${gray}░░${green}${turquoise}╚${green}████${turquoise}╔╝${gray}░${green}█████${turquoise}╗${green}██████${turquoise}╔╝${gray}░${turquoise}╚${green}██${turquoise}╗${green}████${turquoise}╗${green}██${turquoise}╔╝${green}██${turquoise}╔${green}████${turquoise}╔${green}██${turquoise}║\t${gray}PERSONAL PAGE ${yellow}https://invertebr4do.github.io"
	sleep 0.05
	echo -e "${green}██${turquoise}╔══╝${gray}░░${green}██${turquoise}╔══${green}██${turquoise}║${gray}░${turquoise}╚═══${green}██${turquoise}╗${gray}░░${turquoise}╚${green}██${turquoise}╔╝${gray}░░${turquoise}╚════╝${green}██${turquoise}╔═══╝${gray}░░░${green}████${turquoise}╔═${green}████${turquoise}║${gray}░${green}██${turquoise}║╚${green}██${turquoise}╔╝${green}██${turquoise}║\t   ${gray}GITHUB ${turquoise}https://github.com/Invertebr4do"
	sleep 0.05
	echo -e "${green}███████${turquoise}╗${green}██${turquoise}║${gray}░░${green}██${turquoise}║${green}██████${turquoise}╔╝${gray}░░░${green}██${turquoise}║${gray}░░░░░░░░░${green}██${turquoise}║${gray}░░░░░░░${turquoise}╚${green}██${turquoise}╔╝${gray}░${turquoise}╚${green}██${turquoise}╔╝${gray}░${green}██${turquoise}║${gray}░${turquoise}╚═╝${gray}░${green}██${turquoise}║\t  ${gray}INSPIRED IN ${red}s4vitar ${gray}BSPWM CONFIGURATIONS"
	sleep 0.05
	echo -e "${turquoise}╚══════╝╚═╝${gray}░░${turquoise}╚═╝╚═════╝${gray}░░░░${turquoise}╚═╝${gray}░░░░░░░░░${turquoise}╚═╝${gray}░░░░░░░░${turquoise}╚═╝${gray}░░░${turquoise}╚═╝${gray}░░${turquoise}╚═╝${gray}░░░░░${turquoise}╚═╝${end}"
	sleep 0.05
	for i in $(seq 1 80); do echo -ne "${purple}-${end}"; done
}

function banner2(){
        tuput civis; clear
        echo -e "\n\t\t${green}███████${turquoise}╗${gray}░${green}█████${turquoise}${turquoise}╗${gray}░░${green}██████${turquoise}${turquoise}╗${green}██${turquoise}╗${gray}░░░${green}██${turquoise}╗${gray}░░░░░░${green}██████${turquoise}╗${gray}░░${green}██${turquoise}╗${gray}░░░░░░░${green}██${turquoise}╗${green}███${turquoise}╗${gray}░░░${green}███${turquoise}╗"
        sleep 0.05
        echo -e "\t\t${green}██${turquoise}╔════╝${green}██${turquoise}╔══${green}██${turquoise}╗${green}██${turquoise}╔════╝╚${green}██${turquoise}╗${gray}░${green}██${turquoise}╔╝${gray}░░░░░░${green}██${turquoise}╔══${green}██${turquoise}╗${gray}░${green}██${turquoise}║${gray}░░${green}██${turquoise}╗${gray}░░${green}██${turquoise}║${green}████${turquoise}${turquoise}╗${gray}░${green}████${turquoise}║"
        sleep 0.05
        echo -e "\t\t${green}█████${turquoise}╗${gray}░░${green}███████${turquoise}║╚${green}█████${turquoise}╗${gray}░░${green}${turquoise}╚${green}████${turquoise}╔╝${gray}░${green}█████${turquoise}╗${green}██████${turquoise}╔╝${gray}░${turquoise}╚${green}██${turquoise}╗${green}████${turquoise}╗${green}██${turquoise}╔╝${green}██${turquoise}╔${green}████${turquoise}╔${green}██${turquoise}║"
        sleep 0.05
        echo -e "\t\t${green}██${turquoise}╔══╝${gray}░░${green}██${turquoise}╔══${green}██${turquoise}║${gray}░${turquoise}╚═══${green}██${turquoise}╗${gray}░░${turquoise}╚${green}██${turquoise}╔╝${gray}░░${turquoise}╚════╝${green}██${turquoise}╔═══╝${gray}░░░${green}████${turquoise}╔═${green}████${turquoise}║${gray}░${green}██${turquoise}║╚${green}██${turquoise}╔╝${green}██${turquoise}║"
        sleep 0.05
        echo -e "\t\t${green}███████${turquoise}╗${green}██${turquoise}║${gray}░░${green}██${turquoise}║${green}██████${turquoise}╔╝${gray}░░░${green}██${turquoise}║${gray}░░░░░░░░░${green}██${turquoise}║${gray}░░░░░░░${turquoise}╚${green}██${turquoise}╔╝${gray}░${turquoise}╚${green}██${turquoise}╔╝${gray}░${green}██${turquoise}║${gray}░${turquoise}╚═╝${gray}░${green}██${turquoise}║"
        sleep 0.05
        echo -e "\t\t${turquoise}╚══════╝╚═╝${gray}░░${turquoise}╚═╝╚═════╝${gray}░░░░${turquoise}╚═╝${gray}░░░░░░░░░${turquoise}╚═╝${gray}░░░░░░░░${turquoise}╚═╝${gray}░░░${turquoise}╚═╝${gray}░░${turquoise}╚═╝${gray}░░░░░${turquoise}╚═╝${end}"
        sleep 0.05
        echo -e "\n\t\t\t\t\t      ${gray}BY ${purple}Invertebrado"
        sleep 0.05
        echo -e "\t\t\t\t${gray}PERSONAL PAGE ${yellow}https://invertebr4do.github.io"
        sleep 0.05
        echo -e "\t\t\t\t   ${gray}GITHUB ${turquoise}https://github.com/Invertebr4do"
        sleep 0.05
        echo -e "\t\t\t\t  ${gray}INSPIRED IN ${red}s4vitar ${gray}BSPWM CONFIGURATIONS"
        sleep 0.05
        echo -e "\t\t\t${red}s4vitar's ${gray}YOUTUBE CHANNEL ${red}https://www.youtube.com/s4vitar"
        sleep 0.05
        echo -e "\t\t\t ${red}s4vitar's ${gray}TWITCH CHANNEL ${purple}https://www.twitch.tv/S4vitaar${end}"
}

function ctrl_c(){
	echo -e "\n\n${red}[!] Exiting...${end}\n"
	tput cnorm; exit 1
}

trap ctrl_c INT

function status_code(){
	if [ "$(echo $?)" != "0" ]; then
		echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
		tput cnorm; exit 1
	fi
}

function check_user(){
	if [ "$(id -u)" == "0" ]; then
		echo -e "\n${red}[!] NO EJECUTAR ESTE SCRIPT CÓMO ROOT${end}\n"
		tput cnorm; exit 1
	fi
}

function check_internet(){
	ping -c 1 google.com > /dev/null 2>&1
	if [[ "$(echo $?)" -eq 0 ]]; then
		echo -e "\n${green}[✔] CON CONECCIÓN A INTERNET${end}"
		sleep 1.5
	else
		echo -e "\n${red}[X] COMPRUEBA TU CONECCIÓN A INTERNET${end}"
		tput cnorm; exit 1
	fi
}

os=$(lsb_release -a 2>/dev/null | grep "ID:" | awk '{print $2}' FS=":" | sed 's/\t//g')
usr=$USER

function dependencies(){
	banner; tput civis
	
	echo -e "\n${yellow}[*] BUSCANDO ACTUALIZACIONES${end}"; sleep 1
	update=$(sudo apt update | tail -n 1 | grep -oP "\d{1,5000}" | tr -d '\n')
	if [ "$update" > "0" ]; then
		echo -e "\n${purple}█ ${gray}HAY ${purple}$update${gray} PAQUETES POR ACTUALIZAR ${purple}█${end}"
        fi
	which xterm > /dev/null 2>&1
	if [ "$(echo $?)" != "0" ]; then
		echo -e "\n${yellow}[*] INSTALANDO XTERM ${end}"; sleep 1
		sudo apt install xterm -y > /dev/null 2>&1
		if [ "$(echo $?)" != "0" ]; then
			echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
                	tput cnorm; exit 1
                else
			echo -e "\n${turquoise}█ ${gray}XTERM INSTALADO CORRECTAMENTE ${turquoise}█${end}"
                fi
	fi
	if [ "$(echo $?)" -eq 0 ]; then
		if [ "$update" > "0" ]; then
			echo -e "\n${yellow}[*] ACTUALIZANDO PAQUETES DEL SISTEMA${end}"; sleep 1
			if [ "$os" == "Parrot" ]; then
				xterm -T "UPGRADING SYSTEM" -geometry 100x30 -e "sudo parrot-upgrade -y"
				if [ "$(echo $?)" != "0" ]; then
					echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
					tput cnorm; exit 1
				else
					echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"
					sleep 1; tput cnorm
				fi
			else
				xterm -T "UPGRADING SYSTEM" -geometry 100x30 -e "sudo apt upgrade -y"
				if [ "$(echo $?)" != "0" ]; then
					echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
					exit 1
				else
					echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"
					sleep 1; tput cnorm
				fi
			fi
		else
			echo -e "\n${turquoise}█ ${gray}NO SE ENCONTRARON PAQUETES POR ACTUALIZAR ${turquoise}█${end}"
		fi
		
		echo -e "\n${yellow}[*] INSTALANDO PAQUETES NECESARIOS${end}"; sleep 1
		xterm -T "INSTALLING NECESARY PACKAGES" -geometry 100x30 -e "sudo apt install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev -y"
		status_code
        	echo -e "\n${turquoise}█ ${gray}PAQUETES INSTALADOS CORRECTAMENTE ${turquoise}█${end}"
        	sleep 1
		
		if [ "$os" != "Kali" ]; then
			which gnome-terminal > /dev/null 2>&1
			if [ "$(echo $?)" != "0" ]; then
				echo -e "\n${yellow}[*] INSTALANDO GNOME-TERMINAL ${end}"; sleep 1
				sudo apt install gnome-terminal -y > /dev/null 2>&1
				if [ "$(echo $?)" != "0" ]; then
					echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
                			tput cnorm; exit 1
                		else
					echo -e "\n${turquoise}█ ${gray}GNOME-TERMINAL INSTALADA CORRECTAMENTE ${turquoise}█${end}"
                	fi
		fi
	fi
	else
		echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
		tput cnorm; exit 1
	fi
}

function bspwm_sxhkd(){
	banner; tput civis

	echo -e "\n${yellow}[*] CLONANDO BSPWM${end}"; sleep 1
	git clone https://github.com/baskerville/bspwm.git > /dev/null 2>&1
	status_code
        echo -e "\n${turquoise}█ ${gray}BSPWM CLONADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] CLONANDO SXHKD${end}"; sleep 1
	git clone https://github.com/baskerville/sxhkd.git > /dev/null 2>&1
	status_code
        echo -e "\n${turquoise}█ ${gray}SXHKD CLONADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	cd bspwm/
	xterm -T "INSTALLING BSPWM" -geometry 100x30 -e "make"
	status_code
	xterm -T "INSTALLING BSPWM" -geometry 100x30 -e "sudo make install"
	status_code
	echo -e "\n${yellow}[*] INSTALANDO SXHKD${end}"; sleep 1
	cd ../sxhkd/
	xterm -T "INSTALLING SXHKD" -geometry 100x30 -e "make"
	status_code
	xterm -T "INSTALLING SXHKD" -geometry 100x30 -e "sudo make install"
	cd ..
	status_code
	echo -e "\n${turquoise}█ ${gray}SXHKD INSTALADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1
	echo -e "\n${yellow}[*] INSTALANDO BSPWM${end}"; sleep 1
	sleep 1
	xterm -T "INSTALLING BSPWM" -geometry 100x30 -e "sudo apt install bspwm -y"
	status_code
        echo -e "\n${turquoise}█ ${gray}BSPWM INSTALADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1

	echo -e "\n${yellow}[*] CARGANDO ALGUNOS FICHEROS DE BSPWM Y SXHKD${end}"; sleep 1
	mkdir ~/.config/bspwm
	mkdir ~/.config/sxhkd
	cp Files/bspwmrc ~/.config/bspwm/
	status_code
        echo -e "\n${turquoise}█ ${gray}FICHEROS CARGADOS CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] CONFIGURANDO BSPWMRC${end}"; sleep 1
	cat Files/bspwmrc | sed 's/USER/'$usr'/g' > ~/.config/bspwm/bspwmrc && chmod +x ~/.config/bspwm/bspwmrc
	status_code
	echo -e "\n${turquoise}█ ${gray}BSPWMRC CONFIGURADO CORRECTAMENTE ${turquoise}█${end}"
	sleep 1

	echo -e "\n${yellow}[*] CONFIGURANDO SXHKDRC${end}"; sleep 1
	if [ "$os" == "Kali" ]; then
		cat Files/sxhkdrc | sed 's/USER/'$usr'/g' | sed 's/gnome-terminal/qterminal/' > ~/.config/sxhkd/sxhkdrc
	else
		cat Files/sxhkdrc | sed 's/USER/'$usr'/g' > ~/.config/sxhkd/sxhkdrc
	fi
	status_code
        echo -e "\n${turquoise}█ ${gray}SXHKDRC CONFIGURADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] CONFIGURANDO BSPWM_RESIZE${end}"; sleep 1
	mkdir ~/.config/bspwm/scripts/
	cp Files/bspwm_resize ~/.config/bspwm/scripts/. && chmod +x ~/.config/bspwm/scripts/bspwm_resize
	status_code
        echo -e "\n${turquoise}█ ${gray}BSPWM_RESIZE CONFIGURADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1; tput cnorm
}

function Polybar(){
	banner; tput civis

	echo -e "\n${yellow}[*] INSTALANDO PAQUETES NECESARIOS PARA LA POLYBAR"; sleep 1
	xterm -T "INSTALLING NECESARY POLYBAR PACKAGES" -geometry 100x30 -e "sudo apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y"
	status_code
        echo -e "\n${turquoise}█ ${gray}PAQUETES INSTALADOS CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] CLONANDO E INSTALANDO POLYBAR"; sleep 1
	git clone --recursive https://github.com/polybar/polybar > /dev/null 2>&1
	cd polybar/
	mkdir build
	cd build/
	xterm -T "INSTALLING POLYBAR" -geometry 100x30 -e "cmake .."
	status_code
	xterm -T "INSTALLING POLYBAR" -geometry 100x30 -e "make -j$(nproc)"
	status_code
	xterm -T "INSTALLING POLYBAR" -geometry 100x30 -e "sudo make install"
	status_code
	mkdir ~/.config/polybar
	echo -e "\n${turquoise}█ ${gray}POLYBAR INSTALADA CORRECTAMENTE ${turquoise}█${end}"
        sleep 1; tput cnorm
}

function P-R-F-I(){
	banner; tput civis

	echo -e "\n${yellow}[*] ACTUALIZANDO EL SISTEMA${end}"; sleep 1
        xterm -T "UPDATING SYSTEM" -geometry 100x30 -e "sudo apt update"
        status_code
        echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

        echo -e "\n${yellow}[*] INSTALANDO PAQUETES NECESARIOS PARA PICOM"; sleep 1
	xterm -T "INSTALLING NECESARY PICOM PACKAGES" -geometry 100x30 -e "sudo apt install meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev -y"
	status_code
        echo -e "\n${turquoise}█ ${gray}PAQUETES INSTALADOS CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] INSTALANDO PICOM"; sleep 1
	git clone https://github.com/ibhagwan/picom.git > /dev/null 2>&1
	cd picom/
	git submodule update --init --recursive > /dev/null 2>&1
	status_code
	xterm -T "INSTALLING PICOM" -geometry 100x30 -e "meson --buildtype=release . build"
	status_code
	xterm -T "INSTALLING PICOM" -geometry 100x20 -e "sudo ninja -C build"
	status_code
	sudo ninja -C build install > /dev/null 2>&1
	status_code
	echo -e "\n${turquoise}█ ${gray}PICOM INSTALADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] INSTALANDO ROFI"; sleep 1
	xterm -T "INSTALLING ROFI" -geometry 100x30 -e "sudo apt install rofi -y"
	cd ../../..
	mkdir -p ~/.config/rofi/themes && cp Files/nord.rasi ~/.config/rofi/themes/.
	status_code
	echo -e "\n${turquoise}█ ${gray}ROFI INSTALADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

        echo -e "\n${yellow}[*] INSTALANDO FEH"; sleep 1
        xterm -T "INSTALLING FEH" -geometry 100x30 -e "sudo apt install feh -y"
        status_code
	cp Files/Wallpaper.jpg ~/.
        echo -e "\n${turquoise}█ ${gray}FEH INSTALADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

        echo -e "\n${yellow}[*] INSTALANDO DEPENDENCIAS PARA I3LOCK"; sleep 1
        xterm -T "INSTALLING I3LOCK" -geometry 100x30 -e "sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxcb-xtest0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev imagemagick xdpyinfo xrandr xrdb xset -y"
        status_code
        echo -e "\n${turquoise}█ ${gray}DEPENDENCIAS INSTALADASCORRECTAMENTE ${turquoise}█${end}"
        sleep 1
}

function extra_utilities(){
        banner; tput civis

	echo -e "\n${yellow}[*] INSTALANDO XCLIP"; sleep 1
	xterm -T "INSTALLING XCLIP" -geometry 100x30 -e "sudo apt install xclip -y"
	status_code

	echo -e "\n${turquoise}█ ${gray}XCLIP INSTALADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1
	echo -e "\n${yellow}[*] INSTALANDO FIREJAIL"; sleep 1
        xterm -T "INSTALLING FIREJAIL" -geometry 100x30 -e "sudo apt install firejail -y"
        status_code
        echo -e "\n${turquoise}█ ${gray}FIREJAIL INSTALADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

        echo -e "\n${yellow}[*] INSTALANDO CAJA"; sleep 1
        xterm -T "INSTALLING CAJA" -geometry 100x30 -e "sudo apt install caja -y"
        status_code
        echo -e "\n${turquoise}█ ${gray}CAJA INSTALADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

        echo -e "\n${yellow}[*] INSTALANDO FLAMESHOT"; sleep 1
        xterm -T "INSTALLING FLAMESHOT" -geometry 100x30 -e "sudo apt install flameshot -y"
        status_code
        echo -e "\n${turquoise}█ ${gray}FLAMESHOT INSTALADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1; tput cnorm
}

function fonts(){
        banner; tput civis

	echo -e "\n${yellow}[*] INSTALANDO HACK NERD FONTS"; sleep 1
	cd Files
        unzip Hack.zip > /dev/null 2>&1 && sudo mv *.ttf /usr/local/share/fonts/. > /dev/null 2>&1
        status_code
        echo -e "\n${turquoise}█ ${gray}HACK NERD FONTS INSTALADAS CORRECTAMENTE ${turquoise}█${end}"; sleep 1
        status_code; tput cnorm
}

function configs(){
        banner; tput civis

	echo -e "\n${yellow}[*] AÑADIENDO Y CONFIGURANDO POLYBAR${end}"; sleep 1
	sed -i "s/USER/$usr/g" polybar/scripts/powermenu
	sed -i "s/USER/$usr/g" polybar/scripts/powermenu_alt
	cp polybar/* -r ~/.config/polybar/. && chmod +x ~/.config/polybar/launch.sh
	sudo cp polybar/fonts/* /usr/share/fonts/truetype/. && fc-cache -v > /dev/null 2>&1
	mkdir ~/.config/bin && sudo rm -r ../bspwm ../polybar ../sxhkd ../0
	cp bin -r ~/.config/. && chmod +x ~/.config/bin/ethernet_status.sh ~/.config/bin/hackthebox_status.sh ~/.config/bin/target_ip.sh && chmod +x ~/.config/polybar/scripts/launcher ~/.config/polybar/scripts/powermenu ~/.config/polybar/scripts/powermenu_alt
	status_code
	echo -e "\n${turquoise}█ ${gray}POLYBAR AÑADIDA Y CONFIGURADA CORRECTAMENTE ${turquoise}█${end}"; sleep 1
        echo -e "\n${yellow}[*] CONFIGURANDO PICOM"; sleep 1
	mkdir ~/.config/picom
	cp picom.conf ~/.config/picom/.
	status_code
	echo -e "\n${turquoise}█ ${gray}PICOM CONFIGURADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1
	echo -e "\n${yellow}[*] ACTUALIZANDO EL SISTEMA${end}"; sleep 1
        xterm -T "UPDATING SYSTEM" -geometry 100x30 -e "sudo apt update"
        status_code
        echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1
        echo -e "\n${yellow}[*] INSTALANDO MÁS PAQUETES NECESARIOS"; sleep 1
        xterm -T "INSTALLING NECESARY POLYBAR PACKAGES" -geometry 100x30 -e "sudo apt install libpam0g-dev libxrandr-dev libfreetype6-dev libimlib2-dev libxft-dev -y"
	status_code
        echo -e "\n${turquoise}█ ${gray}PAQUETES INSTALADOS CORRECTAMENTE ${turquoise}█${end}"
        sleep 1
	
	
        echo -e "\n${yellow}[*] INSTALANDO I3LOCK Y PAQUETES NECESARIOS PARA I3LOCK-COLOR"; sleep 1
        xterm -T "INSTALLING I3LOCK" -geometry 100x30 -e "sudo apt install i3lock autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxcb-xtest0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev -y"
        status_code
	echo -e "\n${turquoise}█ ${gray}I3LOCK Y DEPENDENCIAS INSTALADASCORRECTAMENTE ${turquoise}█${end}"
        sleep 1
	
	echo -e "\n${yellow}[*] CLONANDO E INSTALANDO I3LOCK-COLOR"; sleep 1
	git clone https://github.com/Raymo111/i3lock-color ~/i3lock-color > /dev/null 2>&1
	mv ~/i3lock-color . && cd i3lock-color
	xterm -T "INSTALLING I3LOCK-COLOR" -geometry 100x30 -e "bash install-i3lock-color.sh"
	status_code
        echo -e "\n${turquoise}█ ${gray}I3LOCK INSTALADO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] CONFIGURANDO FICHEROS PARA I3LOCK-COLOR"; sleep 1
	cd ..
	chmod +x i3lock-color/examples/lock.sh && mv i3lock-color ~/
	status_code
	sudo rm -r ../bspwm ../polybar ../sxhkd ../0
        echo -e "\n${turquoise}█ ${gray}FICHEROS DE I3LOCK-COLOR CONFIGURADOS CORRECTAMENTE ${turquoise}█${end}"
        sleep 1; tput cnorm
}

function zsh_config(){
        banner; tput civis

        echo -e "\n${yellow}[*] CLONANDO Y AÑADIENDO POWELEVEL10K PARA EL USUARIO ${gray}$usr${end}"; sleep 1
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k > /dev/null 2>&1
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
	echo -e "\n${yellow}[*] CLONANDO Y AÑADIENDO POWELEVEL10K PARA EL USUARIO ${gray}root${end}"; sleep 1
	sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/powerlevel10k > /dev/null 2>&1
	sudo echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>/root/.zshrc
	if [ "$os" != "Kali" ]; then
		usermod --shell /usr/bin/zsh $usr
		sudo usermod --shell /usr/bin/zsh root
	fi
	status_code
	echo -e "\n${turquoise}█ ${gray}POWELEVEL10K INSTALADO Y AÑADIDO CORRECTAMENTE PARA LOS DOS USUARIOS ${turquoise}█${end}"
        sleep 1

	cd Files
	echo -e "\n${yellow}[*] AÑADIENDO BAT Y LSD A LA ZSH${end}"
	sudo ln -s -f /home/$usr/.zshrc /root/.zshrc
	sudo dpkg -i bat.deb > /dev/null 2>&1
	sudo dpkg -i lsd.deb > /dev/null 2>&1
	status_code
	echo -e "\n${turquoise}█ ${gray}BAT Y LSD INSTALADO Y AÑADIDO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] AÑADIENDO PLUGIN DE SUDO A LA ZSH${end}"
	sudo mkdir /usr/share/zsh-plugins && sudo cp sudo.plugin.zsh /usr/share/zsh-plugins/.
	sed -i "s/USER/$usr/g" zsh-adds && cat zsh-adds >> ~/.zshrc && sudo chown $usr:$usr /usr/share/zsh-plugins/ && sudo chown $usr:$usr /usr/share/zsh-plugins/sudo.plugin.zsh
	status_code
	echo -e "\n${turquoise}█ ${gray}PLUGIN DE SUDO AÑADIDO CORRECTAMENTE ${turquoise}█${end}"
        sleep 1

        echo -e "\n${yellow}[*] CLONANDO E INSTALANDO FZF PARA EL USUARIO ${gray}$usr${end}"
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf > /dev/null 2>&1
	~/.fzf/install --all > /dev/null 2>&1
	echo -e "\n${yellow}[*] CLONANDO E INSTALANDO FZF PARA EL USUARIO ${gray}root${end}"
	sudo git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf > /dev/null 2>&1
        sudo ~/.fzf/install --all > /dev/null 2>&1
        status_code
        echo -e "\n${turquoise}█ ${gray}FZF INSTALADO CORRECTAMENTE PARA LOS DOS USUARIOS ${turquoise}█${end}"
        sleep 1

	echo -e "\n${yellow}[*] CLONANDO E INSTALANDO OH MY TMUX${end}"
	wich tmux > /dev/null 2>&1
	if [ "$(echo $?)" != "0" ]; then
		xterm -T "INSTALLING TMUX" -geometry 100x30 -e "sudo apt install tmux -y"
		echo -e "\n${turquoise}█ ${gray}TMUX INSTALADO CORRECTAMENTE ${turquoise}█${end}"
	fi
	cd
	git clone https://github.com/gpakosz/.tmux.git > /dev/null 2>&1
	ln -s -f .tmux/.tmux.conf
	status_code
	cp .tmux/.tmux.conf.local .
	sudo git clone https://github.com/gpakosz/.tmux.git > /dev/null 2>&1
        sudo ln -s -f .tmux/.tmux.conf
        status_code
        sudo cp .tmux/.tmux.conf.local .
	echo -e "\n${turquoise}█ ${gray}TMUX INSTALADO Y CONFIGURADO CORRECTAMENTE PARA LOS DOS USUARIOS ${turquoise}█${end}"
        sleep 5; tput cnorm
}

function rofi_theme(){
        banner; tput civis

        echo -ne "\n\n${purple}█ ${gray}¿DESEA CONFIGURAR EL TEMA DE ROFI? [Y/N]${purple} █> ${end}" && read a
        if [[ "$a" == "Y" || "$a" == "y" ]]; then
                echo -ne "\n${purple}█ ${gray}PARA GUARDAR EL TEMA SELECCIONADO DE ROFI PRESIONE ALT + A ${purple}(${gray}SE RECOMIENDA EL TEMA NORD${purple}) █${end}"; sleep 5; rofi-theme-selector > /dev/null 2>&1
		status_code
		echo -ne "\n\n${turquoise}█ ${gray}TEMAS CONFIGURADOS CORRECTAMENTE${turquoise} █${end}"; sleep 3
        fi; tput cnorm
}

function change_session(){
	echo -ne "\n\t\t${purple}█ ${gray}¿DESEA CERRAR ESTA SESIÓN PARA INICIAR LA NUEVA CONFIGURACIÓN? [Y/N]${purple} █> ${end}" && read a
	if [[ "$a" == "Y" || "$a" == "y" ]]; then
		echo -e "\n${red}" 
        	echo -n █ CERRANDO SESIÓN - INICIE SESIÓN EN BSPWM COMO EL USUARIO $USER = ;
        	sleep 20 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
		kill -9 -1
	fi
}

#══════════════┃ MAIN ┃═════════════

#┌═══════════════════════════════┐
check_user 2>/dev/null	      #  █
check_internet 2>/dev/null    #	 █
dependencies 2>/dev/null      #	 █
bspwm_sxhkd 2>/dev/null	      #	 █
Polybar 2>/dev/null	      #	 █
P-R-F-I	2>/dev/null	      #	 █
extra_utilities	2>/dev/null   #	 █
fonts 2>/dev/null	      #	 █
configs 2>/dev/null	      #	 █
zsh_config 2>/dev/null	      #	 █
rofi_theme 2>/dev/null 	      #	 █
banner2			      #	 █
change_session		      #	 █
tput cnorm		      #	 █
#└═══════════════════════════════┘
