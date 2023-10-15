# Author : Rui

function checkDependencies {
    echo Checking dependencies... | lolcat
    sleep 0.5s

    apt update -y | lolcat
    apt upgrade -y | lolcat

    apt install nodejs -y | lolcat
    npm i hercai -g | lolcat
    apt install ruby -y | lolcat
    gem install lolcat -y | lolcat
    apt install toilet -y | lolcat
}

function main() {
    chmod +x index.sh
    mkdir lost
    cp index.sh lost
    cd lost
    mv index.sh herc-ai
    mv herc-ai ../../../usr/bin
    cd ..
    rm -rf lost
    echo "command 'herc-ai' installed!" | lolcat
}

checkDependencies
sleep 0.5s
clear
main
