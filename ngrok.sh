#this tool program by:prince gutierrez
#this tool help you get ngrok link
#VERSION :11.0
blue='\033[31;1m'
red='\033[32;1m'
green='\033[33;1m'
white='\033[34;1m'

dependencies() {

command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
  
  


}



tools(){

echo -e $red                      ███╗░░██╗░██████╗░██████╗░░█████╗░██╗░░██╗
echo -e $red                      ████╗░██║██╔════╝░██╔══██╗██╔══██╗██║░██╔╝
echo -e $red                      ██╔██╗██║██║░░██╗░██████╔╝██║░░██║█████═╝░
echo -e $red                      ██║╚████║██║░░╚██╗██╔══██╗██║░░██║██╔═██╗░
echo -e $red                      ██║░╚███║╚██████╔╝██║░░██║╚█████╔╝██║░╚██╗
echo -e $red                      ╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝ v11.0
echo
echo 
echo -e $red                                    CODED BY PRINCE GUTIERREZ 
echo
echo
echo -e $red                                   GITHUB -: Pentestrater12
echo
echo
echo -e $red                                YOUTUBE  -:  Pentestrater12
echo
echo -e $red           📶📶📶📶📶📶PLEASE OPEN HOTSPOT FOR NO ERROR AND TURN ON MOBILE DATA... 📶📶📶📶📶📶
echo
echo -e $red                         PLEASE SELECT OPTION TO START NGROK
echo  
echo 
echo -e $red                              "[01] > HTTP SERVER"
echo -e $red                              "[02] > TCP SERVER"
echo -e $red.                             "[03] > TLS SERVER" 
echo -e $red                              "[04] > ABOUT"
echo -e $red.                             "[00] > EXIT"
echo
echo
read -p                              "𝑆𝐸𝐿𝐸𝐶𝑇 𝑆𝐸𝑅𝑉𝐸𝑅 𝑂𝑃𝑇𝐼𝑂𝑁$ " hug

if [[ $hug == 1 || $hug == 01 ]]; then

cd TUNNELS && bash HTTP

elif [[ $hug == 2 || $hug == 02 ]]; then

cd TUNNELS && bash TCP

elif [[ $hug == 3 || $hug == 03 ]]; then
cd TUNNELS && bash TLS

elif [[ $hug == 4 ||$hug == 04 ]]; then
cd TUNNELS && bash ABOUT

elif [[ $hug == 0 || $hug == 00 ]]; then
exit 
echo -e $blue EXIT

sleep 3.0
exit 1
else
echo -e $blue 𝐼𝑁𝑉𝐴𝐿𝐼𝐷 𝑂𝑃𝑇𝐼𝑂𝑁𝑆 𝑃𝐿𝐸𝐴𝑆𝐸 𝑇𝑅𝑌 𝐴𝐺𝐴𝐼𝑁👨‍💻👨‍💻👨‍💻
sleep 1
bash ngrok.sh
fi


}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
echo
echo
echo
echo
echo -e $red              ███╗░░██╗░██████╗░██████╗░░█████╗░██╗░░██╗
echo -e $red              ████╗░██║██╔════╝░██╔══██╗██╔══██╗██║░██╔╝
echo -e $red              ██╔██╗██║██║░░██╗░██████╔╝██║░░██║█████═╝░
echo -e $red              ██║╚████║██║░░╚██╗██╔══██╗██║░░██║██╔═██╗░
echo -e $red              ██║░╚███║╚██████╔╝██║░░██║╚█████╔╝██║░╚██╗
echo -e $red              ╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝
echo -e $blue              𝐷𝑂𝑊𝑁𝐿𝑂𝐴𝐷𝐼𝑁𝐺 𝑁𝐺𝑅𝑂𝐾 𝑃𝐿𝐸𝐴𝑆𝐸 𝑊𝐴𝐼𝑇 ⚡⚡⚡⚡⚡⚡⚡⚡⚡⚡⚡⚡⚡
echo
echo
echo
                              
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

}


dependencies
ngrok_server
tools
stop
