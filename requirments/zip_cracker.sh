zipcrack(){
echo -e "
         █████████████████
         █░▄▄░▄█▄─▄█▄─▄▄─█
         ██▀▄█▀██─███─▄▄▄█
         ▀▄▄▄▄▄▀▄▄▄▀▄▄▄▀▀▀
   ███████████████████████████████
   █─▄▄▄─█▄─▄▄▀██▀▄─██─▄▄▄─█▄─█─▄█
   █─███▀██─▄─▄██─▀─██─███▀██─▄▀██
   ▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀" | pv -qL 200 | lolcat

echo
printf "${S6}Enter your path of zip file(${R0}${S1}path/<filename.zip>${R0})${S6}>>${R0}"
read file_path
printf "${S6}Enter your path of password file(${R0}${S1}path/<pass_file_name>${R0}${S6})>>${R0}"
read pass_path
       if [[ ! -f $file_path || ! -f $pass_path ]]; then
          echo
          printf "${S1}You entered rong value. Try again${R0}\n"
       else
          printf "${S4}Welcome. Only use for educational purpose${R0}\n"
       fi
   pass_no=$(wc -w $pass_path | awk '{print $1}')
count=1
while read -r pass; do
  printf "${S1}[*] ${S6}TRYING... ${R0}${S1}: ${S4}${count} ${S1}:: ${S4}${pass}\n"
  unzip -o -p ${pass} ${file_path} > /dev/null 2>&1
    if [ $? == '0' ]; then
       printf "${S2}SUCESSFULLY CRACKED!!${R0} ${S4}password is : ${S1}${pass}${R0}\n"
   break
    elif [ ${count} == ${pass_no} ]; then
       echo
       printf "${S1}[!]FAILD TO CRACK. PLEASE TRY WITH ANOTHER PASSWORD LIST${R0}\n"
   fi
count=$(( count+1 ))
done < "$pass_path"
}
