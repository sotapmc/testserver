#!/bin/bash
CWD=$(pwd)

echo "Tell me the absolute or relative path to where you want to place your files in."
while read -p "Server path > " path
do
    if [ ! -d "$path" ] || [ "$path" == "/" ]; then
        echo -e "\033[31mThis is not a proper path or the path is not exist.\033[0m"
    else
        echo "Valid path detected: $path"
        break
    fi
done

cd $path
bash "$CWD"/start.sh
cp "$CWD"/boot.sh $path 2>&1 >/dev/null

echo -e "Run server use \033[32mboot.sh\033[0m at $path"
