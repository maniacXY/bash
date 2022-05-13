#!/usr/bin/zsh
dirs=("bash" "bewerbungen" "BFW" "private" "python" "website/main")
user=YOUR_USER
loc="/media/$user/Data/Git"

if [[ $1 == "pull" ]]; then
	for i in ${dirs[@]}; do
		git -C $loc/$i pull;
	done;
	echo -e "\n$dirs\npulled"
elif [[ $1 == "push" ]]; then

	for i in ${dirs[@]}; do
		git -C $loc/$i add --all;
		git -C $loc/$i commit -m "$2";
		git -C $loc/$i push;
	done;
	echo -e "\n$dirs\npushed";
else
	echo -e "\nNA\ntry pull or push <message>"
fi
