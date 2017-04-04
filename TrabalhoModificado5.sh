
#!/bin/bash
CISCO=1; NAT=0; MAT=0; THI=0  clear
while (( $CISCO != 0 )); do
echo "Digite um salario"
read CISCO; SALARIO=$CISCO
[ $SALARIO == $NAT ] && let SALARIO=(THI-1)
[ $SALARIO == $MAT ] && let SALARIO=(THI-1)
if (( $SALARIO > $NAT )); then
		THI=$MAT
		MAT=$NAT
		NAT=$SALARIO
else
	if  (( $SALARIO > $MAT )); then
			THI=$MAT
			MAT=$SALARIO
	else

		if (( $SALARIO > $THI )); then
			THI=$SALARIO

		fi
	fi
fi
done
echo "Os 3 maiores salarios são respectivamente:$NAT,$MAT,$THI"
