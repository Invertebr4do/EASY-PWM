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

function helpPanel(){
  echo -e "\n${red}[!] Uso: $0"
  for i in $(seq 1 80); do echo -ne ${red}═${end}; done
  echo -e "\n\n\t${blue}\u2503${end}  ${purple}[-v]${end} ${yellow}Agregar verbose${end}"
  echo -e "\n\t\t${purple}(${end}${green}1${end}${purple})${end} ${turquoise}si${end} ${blue}[${yellow}Util para ver lo que está pasando${blue}]${end}"
  echo -e "\t\t${purple}(${end}${green}0${end}${purple})${end} ${turquoise}no${end} ${blue}[${yellow}Output más bonito y organizado${blue}]${end}"
  echo -e "\n\t${blue}\u2503${end}  ${purple}[-h]${end}${yellow} Mostrar este panel de ayuda${end}\n"
}

function banner(){
  tuput civis; clear
  echo -e "\n${green}███████${turquoise}╗${gray}░${green}█████${turquoise}${turquoise}╗${gray}░░${green}██████${turquoise}${turquoise}╗${green}██${turquoise}╗${gray}░░░${green}██${turquoise}╗${gray}░░░░░░${green}██████${turquoise}╗${gray}░░${green}██${turquoise}╗${gray}░░░░░░░${green}██${turquoise}╗${green}███${turquoise}╗${gray}░░░${green}███${turquoise}╗"
  sleep 0.05
  echo -e "${green}██${turquoise}╔════╝${green}██${turquoise}╔══${green}██${turquoise}╗${green}██${turquoise}╔════╝╚${green}██${turquoise}╗${gray}░${green}██${turquoise}╔╝${gray}░░░░░░${green}██${turquoise}╔══${green}██${turquoise}╗${gray}░${green}██${turquoise}║${gray}░░${green}██${turquoise}╗${gray}░░${green}██${turquoise}║${green}████${turquoise}${turquoise}╗${gray}░${green}████${turquoise}║\t\t      ${gray}BY ${purple}Invertebrado"
  sleep 0.05
  echo -e "${green}█████${turquoise}╗${gray}░░${green}███████${turquoise}║╚${green}█████${turquoise}╗${gray}░░${green}${turquoise}╚${green}████${turquoise}╔╝${gray}░${green}█████${turquoise}╗${green}██████${turquoise}╔╝${gray}░${turquoise}╚${green}██${turquoise}╗${green}████${turquoise}╗${green}██${turquoise}╔╝${green}██${turquoise}╔${green}████${turquoise}╔${green}██${turquoise}║\t${gray}PERSONAL PAGE ${yellow}https://invertebr4do.github.io"
  sleep 0.05
  echo -e "${green}██${turquoise}╔══╝${gray}░░${green}██${turquoise}╔══${green}██${turquoise}║${gray}░${turquoise}╚═══${green}██${turquoise}╗${gray}░░${turquoise}╚${green}██${turquoise}╔╝${gray}░░${turquoise}╚════╝${green}██${turquoise}╔═══╝${gray}░░░${green}████${turquoise}╔═${green}████${turquoise}║${gray}░${green}██${turquoise}║╚${green}██${turquoise}╔╝${green}██${turquoise}║\t   ${gray}GITHUB ${turquoise}https://github.com/invertebr4do"
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
  echo -e "\t\t\t\t   ${gray}GITHUB ${turquoise}https://github.com/invertebr4do"
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
    echo -e "\n${red}[!] NO EJECUTAR ESTE SCRIPT COMO ROOT${end}\n"
    tput cnorm; exit 1
  fi
}

function check_internet(){
  tput civis; ping -c 1 google.com > /dev/null 2>&1
  if [[ "$(echo $?)" -eq 0 ]]; then
    echo -e "\n${green}[✔] CON CONECCIÓN A INTERNET${end}"
    sleep 1.5
  else
    echo -e "\n${red}[X] COMPRUEBA TU CONECCIÓN A INTERNET${end}"
    tput cnorm; exit 1
  fi
}

function iface(){
  echo -e "\n${purple}█ ${gray}INGRESE EL NOMBRE DE SU INTERFAZ DE RED ${purple}█${end}\n"
  for i in $(ip a | grep -oP ": .*?:" | tr -d ':'); do echo -e "\t${blue}· ${yellow}$i${end}"; done
  echo -ne "\n${green}» ${gray}"; read -r ni; echo -e "${end}"

  while [ ! $ni ]; do
    echo -e "${red}[X] VALOR REQUERIDO${end}\n"
    echo -ne "${green}» ${gray}"; read -r ni; echo -e "${end}"
  done

  sed -i "s/eth0/$ni/" Files/bin/ethernet_status.sh
}

os=$(lsb_release -a 2>/dev/null | grep "ID:" | awk '{print $2}' FS=":" | sed 's/\t//g')

function package_installer(){
  if [ $(echo $verbose) == "1" ]; then
    for package in ${required_packages[@]}; do
      echo -ne "\t${yellow}[${blue}*${yellow}] INSTALANDO ${turquoise}$package${end}"
      sudo apt install $package -y
      status_code
      for i in $(seq 1 7); do echo -ne "${yellow}.${end}"; sleep 0.1; done
      echo -e " ${yellow}[${green}\u2713${yellow}]${end}"
      sleep 1
    done
  elif [ $(echo $verbose) == "0" ]; then
    for package in ${required_packages[@]}; do
      echo -ne "\t${yellow}[${blue}*${yellow}] INSTALANDO ${turquoise}$package ${end}"
      sudo apt install $package -y &>/dev/null
      status_code
      for i in $(seq 1 7); do echo -ne "${yellow}.${end}"; sleep 0.1; done
      echo -e " ${yellow}[${green}\u2713${yellow}]${end}"
      sleep 1
    done
  fi
}

function dependencies(){
  banner; tput civis

  echo -e "\n${yellow}[*] BUSCANDO ACTUALIZACIONES${end}"; sleep 1
  update=$(sudo apt update | tail -n 1 | grep -oP "\d{1,5000}" | tr -d '\n')
  if [ "$update" > "0" ]; then
    echo -e "\n${purple}█ ${gray}HAY ${purple}$update${gray} PAQUETES POR ACTUALIZAR ${purple}█${end}"
  fi

  if [ "$(echo $?)" -eq 0 ]; then
    if [ "$update" > "0" ]; then
      echo -e "\n${yellow}[*] ACTUALIZANDO PAQUETES DEL SISTEMA${end}"; sleep 1
      if [ "$os" == "Parrot" ]; then
        if [ $(echo $verbose) == "1" ]; then
          sudo apt purge realtek-rtl8188eus-dkms -y
          sudo parrot-upgrade -y
        elif [ $(echo $verbose) == "0" ]; then
          sudo apt purge realtek-rtl8188eus-dkms -y &>/dev/null
          sudo parrot-upgrade -y &>/dev/null
        fi
        if [ "$(echo $?)" != "0" ]; then
          echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
          tput cnorm; exit 1
        else
          echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"
          sleep 1
        fi
      else
        if [ $(echo $verbose) == "1" ]; then
          sudo apt upgrade -y
        elif [ $(echo $verbose) == "0" ]; then
          sudo apt upgrade -y &>/dev/null
        fi
        if [ "$(echo $?)" != "0" ]; then
          echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
          exit 1
        else
          echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"
          sleep 1
        fi
      fi
		
    else
			echo -e "\n${turquoise}█ ${gray}NO SE ENCONTRARON PAQUETES POR ACTUALIZAR ${turquoise}█${end}"
		fi
		
    echo -ne \\n${yellow}[*] INSTALANDO PAQUETES NECESARIOS = ;
    sleep 2 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
    echo -e "${end}\n"

    declare -a required_packages=(build-essential net-tools git neovim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev curl)

    package_installer

    echo -e "\n${turquoise}█ ${gray}PAQUETES INSTALADOS CORRECTAMENTE ${turquoise}█${end}"

  else
    echo -e "\n${red}[X] OCURRIÓ UN PROBLEMA${end}\n"
    tput cnorm; exit 1
  fi

  echo -e "\n${yellow}[*] INSTALANDO TERMINAL KITTY${end}"; sleep 1
  if [ $(echo $verbose) == "1" ]; then
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
  elif [ $(echo $verbose) == "0" ]; then
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin &>/dev/null
  fi
  pkill kitty &>/dev/null
  status_code
  sudo ln -s -f /home/$USER/.local/kitty.app/bin/kitty /usr/bin/kitty
  echo -e "\n${turquoise}█ ${gray}TERMINAL KITTY INSTALADA CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

  echo -e "\n${yellow}[*] CONFIGURANDO KITTY${end}"; sleep 1
  mkdir ~/.config/kitty 2>/dev/null
  cp {Files/kitty/kitty.conf,Files/kitty/color.ini} ~/.config/kitty/.
}

function bspwm_sxhkd(){
	banner; tput civis

	echo -e "\n${yellow}[*] CLONANDO BSPWM${end}"; sleep 1
  if [ $(echo $verbose) == "1" ]; then
    git clone https://github.com/baskerville/bspwm.git
  elif [ $(echo $verbose) == "0" ]; then
	  git clone https://github.com/baskerville/bspwm.git &>/dev/null
  fi
  status_code
  echo -e "\n${turquoise}█ ${gray}BSPWM CLONADO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

	echo -e "\n${yellow}[*] CLONANDO SXHKD${end}"; sleep 1
  if [ $(echo $verbose) == "1" ]; then
    git clone https://github.com/baskerville/sxhkd.git
  elif [ $(echo $verbose) == "0" ]; then
	  git clone https://github.com/baskerville/sxhkd.git &>/dev/null
  fi
  status_code
  echo -e "\n${turquoise}█ ${gray}SXHKD CLONADO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

  function install_bspwm(){
	  cd bspwm/
	  make
	  status_code
	  sudo make install
	  status_code
  }

  echo -e "\n${yellow}[*] INSTALANDO BSPWM (make)"; sleep 1

  if [ $(echo $verbose) == "1" ]; then
    install_bspwm
    status_code
  elif [ $(echo $verbose) == "0" ]; then
    install_bspwm &>/dev/null
    status_code
  fi

  echo -e "\n${turquoise}█ ${gray}BSPWM INSTALADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1

	echo -e "\n${yellow}[*] INSTALANDO SXHKD${end}"; sleep 1

  function install_sxhkd(){
    cd ../sxhkd/
	  make
	  status_code
    sudo make install
	  status_code
    cd ..
  }

  if [ $(echo $verbose) == "1" ]; then
    install_sxhkd
    status_code
  elif [ $(echo $verbose) == "0" ]; then
    install_sxhkd &>/dev/null
    status_code
  fi

	echo -e "\n${turquoise}█ ${gray}SXHKD INSTALADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1

  echo -e "\n${yellow}[*] INSTALANDO BSPWM (apt)${end}"; sleep 1
	
  if [ $(echo $verbose) == "1" ]; then
	  sudo apt install bspwm -y
  elif [ $(echo $verbose) == "0" ]; then
    sudo apt install bspwm -y &>/dev/null
  fi
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
	cat Files/bspwmrc | sed 's/USER/'$USER'/g' > ~/.config/bspwm/bspwmrc && chmod +x ~/.config/bspwm/bspwmrc
	status_code
	echo -e "\n${turquoise}█ ${gray}BSPWMRC CONFIGURADO CORRECTAMENTE ${turquoise}█${end}"
	sleep 1

	echo -e "\n${yellow}[*] CONFIGURANDO SXHKDRC${end}"; sleep 1
  if [ $os == "Parrot" ]; then
    cat Files/sxhkdrc | sed 's/\/home\/USER\/\.config\/rofi\/launchers\/type-3\/launcher.sh/rofi -show run/' > ~/.config/sxhkd/sxhkdrc
  else
	  cat Files/sxhkdrc | sed 's/USER/'$USER'/g' > ~/.config/sxhkd/sxhkdrc
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

	echo -ne \\n${yellow}[*] INSTALANDO PAQUETES NECESARIOS PARA LA POLYBAR = ;
  sleep 2 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
  echo -e "${end}\n"

  declare -a required_packages=(cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libnl-genl-3-dev polybar)
  
  if [ $os == "Kali" ]; then
    package_installer 
    if [ $(echo $verbose) == "1" ]; then
      sudo apt install libcurl4-openssl-dev -y
    elif [ $(echo $verbose) == "0" ]; then
      sudo apt install libcurl4-openssl-dev -y &>/dev/null
    fi
  else
    package_installer
    if [ $(echo $verbose) == "1" ]; then
      sudo apt-get install libuv1.dev -y
    elif [ $(echo $verbose) == "0" ]; then
      sudo apt-get install libuv1.dev -y &>/dev/null
    fi
  fi

  echo -e "\n${turquoise}█ ${gray}PAQUETES INSTALADOS CORRECTAMENTE ${turquoise}█${end}"

  function install_polybar(){
	  git clone --recursive https://github.com/polybar/polybar
	  cd polybar/
	  mkdir build
	  cd build/
	  cmake ..
	  status_code
	  make -j$(nproc)
	  status_code
	  sudo make install
  }

	echo -e "\n${yellow}[*] CLONANDO E INSTALANDO POLYBAR"; sleep 1

  if [ $(echo $verbose) == "1" ]; then
    install_polybar
    status_code
  elif [ $(echo $verbose) == "0" ]; then
    install_polybar &>/dev/null
    status_code
  fi

  mkdir ~/.config/polybar
	echo -e "\n${turquoise}█ ${gray}POLYBAR INSTALADA CORRECTAMENTE ${turquoise}█${end}"
  sleep 1; tput cnorm
}


function picom_rofi(){
	banner; tput civis

	echo -e "\n${yellow}[*] ACTUALIZANDO EL SISTEMA${end}"; sleep 1
  if [ $(echo $verbose) == "1" ]; then
    sudo apt update
  elif [ $(echo $verbose) == "0" ]; then
    sudo apt update &>/dev/null
  fi
  status_code
  echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

  echo -ne \\n${yellow}[*] INSTALANDO PAQUETES NECESARIOS PARA PICOM = ;
  sleep 2 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
  echo -e "${end}\n"

  declare -a required_packages=(meson libpcre3-dev libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev)
  
  package_installer 

  echo -e "\n${turquoise}█ ${gray}PAQUETES INSTALADOS CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

  function install_picom(){
    git clone https://github.com/ibhagwan/picom.git
	  cd picom/
	  git submodule update --init --recursive
	  status_code
	  meson --buildtype=release . build
	  status_code
	  sudo ninja -C build
	  status_code
	  sudo ninja -C build install
  }

	echo -e "\n${yellow}[*] INSTALANDO PICOM"; sleep 1

  if [ $(echo $verbose) == "1" ]; then
    install_picom
    status_code
  elif [ $(echo $verbose) == "0" ]; then
    install_picom &>/dev/null
    status_code
  fi
  cd ..
	echo -e "\n${turquoise}█ ${gray}PICOM INSTALADO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

	echo -e "\n${yellow}[*] INSTALANDO ROFI"; sleep 1
  
  if [ $(echo $verbose) == "1" ]; then
	  sudo apt install rofi -y
  elif [ $(echo $verbose) == "0" ]; then
    sudo apt install rofi -y &>/dev/null
  fi
  status_code
	cd ../../..
	rm -rf ~/.config/rofi
  mkdir ~/.config/rofi
  status_code
	echo -e "\n${turquoise}█ ${gray}ROFI INSTALADO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

  echo -e "\n${yellow}[*] CONFIGURANDO TEMA DE ROFI"; sleep 1
  if [ $(echo $verbose) == "1" ]; then
    git clone https://github.com/adi1090x/rofi.git
  elif [ $(echo $verbose) == "0" ]; then
    git clone https://github.com/adi1090x/rofi.git &>/dev/null
  fi
  mkdir ~/.config/rofi 2>/dev/null && rm -rf ~/.config/rofi/*
  cp -R {rofi/files/colors,rofi/files/images,rofi/files/launchers,rofi/files/powermenu} ~/.config/rofi/.

  echo -e "\n${turquoise}█ ${gray}TEMA DE ROFI CONFIGURADO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1
}

function feh_ilock(){
  banner; tput civis

  echo -e "\n${yellow}[*] INSTALANDO FEH"; sleep 1
  if [ $(echo $verbose) == "1" ]; then
    sudo apt install feh -y
  elif [ $(echo $verbose) == "0" ]; then
    sudo apt install feh -y &>/dev/null
  fi
  status_code
	cp EASY-PWM/Files/Wallpaper.jpg ~/Pictures/.
  echo -e "\n${turquoise}█ ${gray}FEH INSTALADO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

  echo -ne \\n${yellow}[*] INSTALANDO DEPENDENCIAS PARA I3LOCK = ;
  sleep 2 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
  echo -e "${end}\n"

  declare -a required_packages=(autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxcb-xtest0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev imagemagick x11-utils)
  
  package_installer 

  echo -e "\n${turquoise}█ ${gray}DEPENDENCIAS INSTALADAS CORRECTAMENTE ${turquoise}█${end}"
  sleep 1
}

function extra_utilities(){
  banner; tput civis

  echo -ne \\n${yellow}[*] INSTALANDO ALGUNAS UTILIDADES EXTRA = ;
  sleep 2 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
  echo -e "${end}\n"

  declare -a required_packages=(xclip firejail caja flameshot scrub brightnessctl pamixer)
 
  package_installer

  echo -e "\n${turquoise}█ ${gray}UTILIDADES INSTALADAS CORRECTAMENTE ${turquoise}█${end}"
  sleep 1; tput cnorm
}

function fonts(){
  banner; tput civis

	echo -e "\n${yellow}[*] INSTALANDO HACK NERD FONTS"; sleep 1
	cd Files
  if [ $(echo $verbose) == "1" ]; then
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
  elif [ $(echo $verbose) == "0" ]; then
    wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
  fi
  unzip Hack.zip > /dev/null 2>&1 && sudo mv *.ttf /usr/local/share/fonts/.
  rm Hack.zip LICENSE.md readme.md
  echo -e "\n${turquoise}█ ${gray}HACK NERD FONTS INSTALADAS CORRECTAMENTE ${turquoise}█${end}"; sleep 1
  status_code; tput cnorm
}

function configs(){
  banner; tput civis

	echo -e "\n${yellow}[*] AÑADIENDO Y CONFIGURANDO POLYBAR${end}"; sleep 1
  cd EASY-PWM/Files
	sed -i "s/USER/$USER/g" polybar/scripts/powermenu
	sed -i "s/USER/$USER/g" polybar/scripts/powermenu_alt
	cp polybar/* -r ~/.config/polybar/. && chmod +x ~/.config/polybar/launch.sh
	sudo cp polybar/fonts/* /usr/share/fonts/truetype/. && fc-cache -v &>/dev/null
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
  if [ $(echo $verbose) == "1" ]; then
    sudo apt update
  elif [ $(echo $verbose) == "0" ]; then
    sudo apt update &>/dev/null
  fi
  status_code
  echo -e "\n${turquoise}█ ${gray}SISTEMA ACTUALIZADO CORRECTAMENTE ${turquoise}█${end}"; sleep 1

  echo -ne \\n${yellow}[*] INSTALANDO I3LOCK Y PAQUETES NECESARIOS PARA I3LOCK-COLOR = ;
  sleep 2 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
  echo -e "${end}\n"

  declare -a required_packages=(libpam0g-dev libxrandr-dev libfreetype6-dev  libxft-dev i3lock autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxcb-xtest0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev)
 
  package_installer

  if [ $os == "Kali" ]; then
    echo -ne "\t${yellow}[${blue}*${yellow}] INSTALANDO ${turquoise}libimlib2-dev${end}"
    if [ $(echo $verbose) == "1" ]; then
      sudo apt install libimlib2-dev -y
    elif [ $(echo $verbose) == "0" ]; then
      sudo apt install libimlib2-dev -y &>/dev/null
    fi
    for i in $(seq 1 7); do echo -ne "${yellow}.${end}"; sleep 0.1; done
    echo -e " ${yellow}[${green}\u2713${yellow}]${end}"
  fi

	echo -e "\n${turquoise}█ ${gray}I3LOCK Y DEPENDENCIAS INSTALADASCORRECTAMENTE ${turquoise}█${end}"
  sleep 1
	
  function install_ilock-col(){
    git clone https://github.com/Raymo111/i3lock-color ~/i3lock-color
    mv ~/i3lock-color . && cd i3lock-color
	  bash install-i3lock-color.sh
	  status_code
  }

	echo -e "\n${yellow}[*] CLONANDO E INSTALANDO I3LOCK-COLOR"; sleep 1
  if [ $(echo $verbose) == "1" ]; then
    install_ilock-col
  elif [ $(echo $verbose) == "0" ]; then
	  install_ilock-col &>/dev/null
  fi
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

  which zsh &>/dev/null

  if [ $(echo $?) != "0" ]; then
    echo -e "\n${yellow}[*] INSTALANDO ZSH${end}"; sleep 1
    if [ $(echo $verbose) == "1" ]; then
      sudo apt install zsh -y
    elif [ $(echo $verbose) == "0" ]; then
      sudo apt install zsh -y &>/dev/null
    fi
    status_code
  fi

  echo -e "\n${yellow}[*] CLONANDO Y AÑADIENDO POWELEVEL10K PARA EL USUARIO ${gray}$USER${end}"; sleep 1
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k > /dev/null 2>&1
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
	echo -e "\n${yellow}[*] CLONANDO Y AÑADIENDO POWELEVEL10K PARA EL USUARIO ${gray}root${end}"; sleep 1
	sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/powerlevel10k > /dev/null 2>&1
	sudo echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>/root/.zshrc
	if [ "$os" != "Kali" ]; then
		usermod --shell /usr/bin/zsh $USER &>/dev/null
		sudo usermod --shell /usr/bin/zsh root &>/dev/null
	fi
	status_code
	echo -e "\n${turquoise}█ ${gray}POWELEVEL10K INSTALADO Y AÑADIDO CORRECTAMENTE PARA LOS DOS USUARIOS ${turquoise}█${end}"
  sleep 1

	cd Files
	echo -e "\n${yellow}[*] AÑADIENDO BAT Y LSD A LA ZSH${end}"
	sudo ln -s -f /home/$USER/.zshrc /root/.zshrc
  if [ $(echo $verbose) == "1" ]; then
	  sudo apt install bat -y
	  wget https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb && sudo dpkg -i lsd_0.23.1_amd64.deb
	elif [ $(echo $verbose) == "0" ]; then
    sudo apt install bat -y &>/dev/null
    wget https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb &>/dev/null && sudo dpkg -i lsd_0.23.1_amd64.deb &>/dev/null
  fi
  status_code
	echo -e "\n${turquoise}█ ${gray}BAT Y LSD INSTALADO Y AÑADIDO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

	echo -e "\n${yellow}[*] AÑADIENDO PLUGIN DE SUDO A LA ZSH${end}"
	sudo mkdir /usr/share/zsh-plugins && sudo cp sudo.plugin.zsh /usr/share/zsh-plugins/.
	sed -i "s/USER/$USER/g" zsh-adds && cat zsh-adds >> ~/.zshrc && sudo chown $USER:$USER /usr/share/zsh-plugins/ && sudo chown $USER:$USER /usr/share/zsh-plugins/sudo.plugin.zsh
	status_code
	echo -e "\n${turquoise}█ ${gray}PLUGIN DE SUDO AÑADIDO CORRECTAMENTE ${turquoise}█${end}"
  sleep 1

  echo -e "\n${yellow}[*] CLONANDO E INSTALANDO FZF PARA EL USUARIO ${gray}$USER${end}"
  if [ $(echo $verbose) == "1" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	  ~/.fzf/install --all
  elif [ $(echo $verbose) == "0" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf &>/dev/null
	  ~/.fzf/install --all &>/dev/null
  fi
	echo -e "\n${yellow}[*] CLONANDO E INSTALANDO FZF PARA EL USUARIO ${gray}root${end}"
  if [ $(echo $verbose) == "1" ]; then
    sudo git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    sudo ~/.fzf/install --all
  elif [ $(echo $verbose) == "0" ]; then
	  sudo git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf &>/dev/null
    sudo ~/.fzf/install --all &>/dev/null
  fi
  status_code
  echo -e "\n${turquoise}█ ${gray}FZF INSTALADO CORRECTAMENTE PARA LOS DOS USUARIOS ${turquoise}█${end}"

  echo -e "\n${yellow}[*] CLONANDO E INSTALANDO NVCHAD PARA EL USUARIO ${gray}$USER${end}"
  rm -rf ~/.config/nvim
  if [ $(echo $verbose) == "1" ]; then
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
  elif [ $(echo $verbose) == "0" ]; then
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 &>/dev/null
  fi
  status_code
  echo -e "\n${yellow}[*] CLONANDO E INSTALANDO NVCHAD PARA EL USUARIO ${gray}root${end}"
  sudo rm -rf /root/.config/nvim
  if [ $(echo $verbose) == "1" ]; then
    sudo git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1
  elif [ $(echo $verbose) == "0" ]; then
    sudo git clone https://github.com/NvChad/NvChad /root/.config/nvim --depth 1 &>/dev/null
  fi
  status_code
  echo -e "\n${turquoise}█ ${gray}NVCHAD CLONADO E INSTALADO CORRECTAMENTE ${turquoise}█${end}"

  sleep 5; tput cnorm
}

function change_session(){
	echo -ne "\n\t\t${purple}█ ${gray}¿DESEA CERRAR ESTA SESIÓN PARA INICIAR LA NUEVA CONFIGURACIÓN? [Y/N]${purple} █> ${end}" && read a
	if [[ "$a" == "Y" || "$a" == "y" ]]; then
    tput civis
		echo -e "\n${red}" 
    echo -n █ CERRANDO SESIÓN - INICIE SESIÓN EN BSPWM COMO EL USUARIO $USER = ;
    sleep 20 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
		kill -9 -1
	fi
}

#══════════════┃ MAIN ┃═════════════

declare -i parameter_counter=0; while getopts ":v:h:" arg; do
  case $arg in
    v) verbose=$OPTARG; let parameter_counter+=1;;
    h) helpPanel;;
  esac
done

if [ $parameter_counter -eq 0 ]; then
  helpPanel
else
  if [ $(echo $verbose) == "0" ]; then
    check_user 2>/dev/null
    iface 2>/dev/null
    check_internet 2>/dev/null
    dependencies 2>/dev/null
    bspwm_sxhkd 2>/dev/null
    Polybar 2>/dev/null
    picom_rofi 2>/dev/null
    feh_ilock 2>/dev/null
    extra_utilities	2>/dev/null
    fonts 2>/dev/null
    configs 2>/dev/null
    zsh_config 2>/dev/null
    banner2
    change_session
    tput cnorm

  elif [ $(echo $verbose) == "1" ]; then
    check_user
    iface
    check_internet
    dependencies
    bspwm_sxhkd
    Polybar
    picom_rofi
    feh_ilock
    extra_utilities
    fonts
    configs
    zsh_config
    banner2
    change_session
    tput cnorm

  else
    echo -e "${red}[!] OPCIÓN INVÁLIDA${end}"
    exit 1
  fi
fi
