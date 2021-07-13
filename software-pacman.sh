# Arch Linux Post Install Setup and Config

echo -e "\nInstalling Software\n"

PKGS=(
	# System
	'linux-lts'
	'linux-lts-headers'

	# Terminal Utilities
	'neofetch'
	'htop'
	'conky'
	'cmatrix'
	'openssh'

	# Disk Utilities
	'ntfs-3g'
	'gparted'

	# General Utilities
	'flameshot'

	# Messaging
	'telegram-desktop'
	'thunderbird'

	# Media
	'smplayer'
	'audacious'
	'obs-studio'

	# Development
	'git'
	'vim'
	'nodejs'
	'npm'
	'firefox-developer-edition'
	'gnome-keyring'
	'libsecret'

	# Graphics and Design
	'gimp'

	# Productivity
	'libreoffice'
	'dropbox'

)

# Removing up to date kernel
# sudo pacman -Rs linux

# Installing archive managers
# sudo pacman -S p7zip p7zip-plugins unrar tar rsync

# Installing codecs and plugins
# sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins

for PKG in "${PKGS[@]}"; do
	echo "Installing ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nDone!\n"