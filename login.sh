 #!/bin/bash
USUARIO=vagrant
SENHA=vagrant
SAI=1
while (( $SAI != 0 )); do
clear
echo
echo "Debian  GNU/Linux  8  jessie  tty1"
echo
QNT=1
while (( $QNT <= 5 )); do
echo -n "jessie login: "
read USER
echo -n "Password: "
read -s PASS
echo
echo
	if [ $USER == $USUARIO  ]; then
		if [ $PASS ==  $SENHA  ];then
			SAI=0
			QNT=6
		else
			sleep 3
			echo
			echo "Login incorrect"
		fi
else
		sleep 3
		echo
		echo "Login incorrect"
fi
let QNT=($QNT+1)
 done
done

