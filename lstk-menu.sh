# Colors
SWCyan='\e[0;36m'
Azul='\e[0;34m'
okegreen='\033[92m'
SWWhite='\e[1;37m'
SWLightRED='\e[1;31m'
SWYellow='\e[0;33m'
RESET='\033[00m'
SWOrange='\e[38;5;166m'


function showoptions(){

#clear;

echo -e ${SWLightRED}"\t\t[${SWWhite}1${SWLightRED}]\t${okegreen}NMAP scan"
echo -e ${SWLightRED}"\t\t[${SWWhite}2${SWLightRED}]\t${okegreen}DIR Buster"
echo -e ${SWLightRED}"\t\t[${SWWhite}3${SWLightRED}]\t${SWYellow}Settings"
echo -e ${SWLightRED}"\t\t[${SWWhite}4${SWLightRED}]\t${SWLightRED}exit"
echo -e "${RESET}"
}

function banner(){
echo -e "${SWOrange}";
cat<<"STOP"
           (`-').->(`-')                                    
    <-.    ( OO)_  ( OO).->       .->        .->      <-.   
  ,--. )  (_)--\_) /    '._  (`-')----. (`-')----.  ,--. )  
  |  (`-')/    _ / |'--...__)( OO).-.  '( OO).-.  ' |  (`-')
  |  |OO )\_..`--. `--.  .--'( _) | |  |( _) | |  | |  |OO )
 (|  '__ |.-._)   \   |  |    \|  |)|  | \|  |)|  |(|  '__ |
  |     |'\       /   |  |     '  '-'  '  '  '-'  ' |     |'
  `-----'  `-----'    `--'      `-----'    `-----'  `-----' 
  
STOP

echo -e "${SWCyan} Welcome in ${SWYellow}LSTool Kit ${SWCyan}version 0.1 (Created by ${SWYellow}Lubos-Source${SWCyan})"
echo -e "${RESET}"
showoptions;

}

function setingsoptions(){
echo -e ${SWLightRED}"\t\t[${SWWhite}1${SWLightRED}]\t${SWYellow}SET victims IP"
echo -e ${SWLightRED}"\t\t[${SWWhite}2${SWLightRED}]\t${SWYellow}SET victims PORT"
echo -e ${SWLightRED}"\t\t[${SWWhite}3${SWLightRED}]\t${SWYellow}SET ports to scan (1-255)"
echo -e ${SWLightRED}"\t\t[${SWWhite}4${SWLightRED}]\t${SWLightRED}exit settings"
echo -e "${RESET}"

}

function settingsbanner(){
#clear;
echo -e "${SWOrange}";
cat <<"STOP"
  ____       _   _   _                 
 / ___|  ___| |_| |_(_)_ __   __ _ ___ 
 \___ \ / _ \ __| __| | '_ \ / _` / __|
  ___) |  __/ |_| |_| | | | | (_| \__ \
 |____/ \___|\__|\__|_|_| |_|\__, |___/
                             |___/     
STOP
echo -e "${RESET}"
setingsoptions;
}

function help_call(){

cat <<STOP;

USAGE:
  Choose from menu what you want to do.
  
  [ 1 ]	Will run basic NMAP scan with default all ports or defined ports by user.
  [ 2 ] Will run DirBuster with default wordlist or setuped one by user.
  [ 3 ] Let You set up IPs, ports and everything you should need (optional)
  [ x ] Will run all available scans / attacks.
STOP
  #exit 1

}

function basiccommand(){
	help_call;
}

function newTerm(){
arg=$1;
#echo -e "Function called with param: $arg"
case  $arg in 
		"nmap")
		echo "running NMAP"
		;;
		"dirb")
		echo "running DIR Buster"
		;;
		*)
		echo -e "${SWLightRED}Error ${SWWhite}invalid arg in function newTerm() (error is not caused by user !!)"
		
esac
#gnome-terminal --title=newWindow \\
#               -- bash -c "ls; bash"
}
	
function main(){
 
banner;
#showoptions;

mainmenuinput=""

while true

read -p "Input Selection: " mainmenuinput

do

case $mainmenuinput in
	"menu")
	showoptions;
	;;
	"1")
	newTerm "nmap";
	;;
	"2")
	newTerm "dirb";
	;;
	"3")
	clear;
	setingsinput=""
	while true
	do
	
	settingsbanner;
	read -p "Settings Selection: " setingsinput
	
	case $setingsinput in
	"1")
	
	;;
	"2")
	;;
	"3")
	;;
	"4")
	clear;
	banner;
	break;
	;;
	esac
	
	done
	
	;;
	"4")
	echo -e "${SWCyan} Thank You for using ${SWYellow}LS tool kit${SWCyan} see you again :) "
	exit;
	;;
	*)
	basiccommand;
	banner;
	

esac

done

}



main;
