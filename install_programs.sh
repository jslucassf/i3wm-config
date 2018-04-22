# The script takes two arguments
# 1 - The Linux Distribution
# 2 - The Desktop Environment

sudo su

if [ "$1" == "arch" ] || [ "$1" == "antergos" ] || [ "$1" == "manjaro" ]; then	
	pacman -S deepin-terminal --noconfirm
	pacman -S vim --noconfirm
	yaourt -S mailspring --noconfirm
	pacman -S atom --noconfirm
	yaourt -S spotify-stable --noconfirm
	yaourt -S slack-desktop --noconfirm
	yaourt -S rstudio-desktop-bin --noconfirm
elif [ "$1" == "debian" ] || [ "$1" == "ubuntu" ] || [ "$1" == "mint" ] || [ "$1" == "deepin" ]; then
	# TODO
	apt-get install vim
	
fi

if [ "$2" == "i3" ]; then
	pacman -S playerctl --noconfirm --needed
	pacman -S i3 --noconfirm --needed
	pacman -S feh --noconfirm
	pacman -S dmenu --noconfirm --needed
	pacman -S lxappearance --noconfirm --needed
	yaourt -S powerline-fonts --noconfirm
	pacman -S otf-font-awesome --noconfirm
	pacman -S python-dbus --noconfirm
	yaourt -S bumblebee-status --noconfirm
fi

exit
