#
#  Install steam on Debian 11 (bullseye)
#

enable_32_bit_support() {
	if echo "Enabling 32 bit support ..." && sudo dpkg --add-architecture i386; then
		if echo "Updating apt cache ..." && sudo apt update -y; then
			echo -e "Okay.\n"
		fi
	fi
}

get_apt_add_repository_tool() {
	if echo "Get apt-add-repository tool ..." && sudo apt install software-properties-common -y; then
		echo -e "Okay.\n"
	fi
}

add_nonfree_repo() {
	if echo "Adding non-free repo ..." && sudo apt-add-repository non-free; then
		if echo "Updating apt cache ..." && sudo apt update -y; then
			echo -e "Okay.\n"
    	fi
	fi
}

install_steam() {
	if echo "Installing steam ..." && sudo apt install steam -y; then
		echo -e "Okay.\n"
	fi
}

if enable_32_bit_support; then
	if get_apt_add_repository_tool; then
		if add_nonfree_repo; then
			if install_steam; then
				echo "Done."; exit 0
			fi
		fi
	fi
fi

echo "Failed ..."; exit 1
