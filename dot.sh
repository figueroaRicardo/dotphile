#!/usr/bin/env bash

# Change directory to location of the script
cd "$(dirname "$0")"
source ./lib/echos.sh


# Display logo
echo -e "\n\033[38;5;255m\033[48;5;234m\033[1m                           \033[0m"
echo -e "\033[38;5;255m\033[48;5;234m\033[1m       dotphile            \033[0m"
echo -e "\033[38;5;255m\033[48;5;234m\033[1m     by rfigueroa          \033[0m"
echo -e "\033[38;5;255m\033[48;5;234m\033[1m                           \033[0m\n"

if [ "$(uname)" == "Darwin" ]; then
	read -p  "Setting up a new mac?" -n 1;
	if [[ $REPLAY =~ ^[Yy]$ ]]; then
		source ./newmac
	fi
fi

for file in .*; do
	if [[ $file == "." || $file == ".." ]]; then
	  echo dir
      continue
    fi
	echo $file
	unlink ~/$file > /dev/null 2>&1
	ln -s ~/dotphile/$file ~/$file
done


