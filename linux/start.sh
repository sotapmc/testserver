#!/bin/bash
echo -e "\033[33mDownloading the latest paper build from paper api. (step 1/2)\033[0m"
curl https://papermc.io/api/v1/paper/1.16.1/latest/download -o ./paper-latest.jar
echo -e "\033[33mDownloading vanilla jar from BMCLAPI. (step 2/2)\033[0m"

if [ ! -d "cache" ]; then
    mkdir cache
fi

curl https://bmclapi2.bangbang93.com/version/1.16.1/server -o ./cache/mojang_1.16.1.jar

echo -e "\033[32mDone.\033[0m"
