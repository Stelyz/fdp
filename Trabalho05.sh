#!/bin/bash
CISCO=1; VTNC=0; FDM=0; FDP=0  clear
while (( $CISCO != 0 )); do
echo "Digite um salario"
read DIG; SALARIO=$CISCO
[ $SALARIO == $VTNC ] && let SALARIO=(FDP-1)
[ $SALARIO == $FDM  ] && let SALARIO=(FDP-1)
if (( $SALARIO > $CISCO )); then
		FDP=$FDM
		FDM=$VTNC
		VTNC=$SALARIO
else
	if  (( $SALARIO > $FDM )); then
			FDP=$FDM
			FDM=$SALARIO
	else

		if (( $SALARIO > $FDP )); then
			FDP=$SALARIO

		fi
	fi
fi
done
echo "Os 3 maiores salarios são respectivamente:$VTNC, $FDM, $FDP"
