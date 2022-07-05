#!/bin/bash
#Script criado por King of Spades, na intenção de agilizar a instalacão das ferramentas que utilizo.



clear

echo -e "\e[1;92m Dando um update e upgrade"

sudo apt update
sudo apt upgrade

sudo apt-get install ssh
sudo apt-get install git
sudo apt-get install python
sudo apt-get install python2
sudo apt-get install python3


echo -e "\e[1;92m Instalando a pasta Ferramenta e tudo dentro dela"

mkdir ferramentas
cd ferramentas
git clone https://github.com/arthaud/git-dumper.git
pip install git-dumper

git clone https://github.com/hangetzzu/saycheese.git

git clone https://github.com/d093w1z/sayhello.git

git clone https://github.com/thewhiteh4t/seeker.git
cd seeker/
chmod +x install.sh

cd ../

git clone https://github.com/trustedsec/social-engineer-toolkit.git
cd social-engineer-toolkit
pip3 install -r requirements.txt

cd ../

git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt

cd ../

git clone https://github.com/htr-tech/zphisher.git

cd

echo -e "\e[1;92m Agora instalndo o goland e todas ferramentas que usarei em go"

sudo apt-get install golang
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/OJ/gobuster/v3@latest
go install github.com/003random/getJS@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go get -u github.com/tomnomnom/gf
go get github.com/Emoe/kxss

cd go/bin
sudo apt-cache search chromium
sudo apt-get install chromium
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip
rm aquatone_linux_amd64_1.7.0.zip README.md LICENSE.txt


git clone https://github.com/devanshbatham/ParamSpider.git
cd ParamSpider
pip3 install -r requirements.txt

cd
mkdir .gf
cd .gf
wget https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/xss.json
wget https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/sqli.json
wget https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/redirect.json
wget https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/idor.json

cd
mkdir .wl
cd .wl
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

echo -e "\e[1;92m Tudo Pronto, Só Hackear agora"


exit