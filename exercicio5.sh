#!/bin/bash
DIG=1; PRIMEIRO=0; SEGUNDO=0; TERCEIRO=0  clear
while (( $DIG != 0 )); do
echo "Digite um salario"
read DIG; SALARIO=$DIG
[ $SALARIO == $PRIMEIRO ] && let SALARIO=(TERCEIRO-1)
[ $SALARIO == $SEGUNDO  ] && let SALARIO=(TERCEIRO-1)
if (( $SALARIO > $PRIMEIRO )); then
		TERCEIRO=$SEGUNDO
		SEGUNDO=$PRIMEIRO
		PRIMEIRO=$SALARIO
else
	if  (( $SALARIO > $SEGUNDO )); then
			TERCEIRO=$SEGUNDO
			SEGUNDO=$SALARIO
	else

		if (( $SALARIO > $TERCEIRO )); then
			TERCEIRO=$SALARIO

		fi
	fi
fi
done
echo "Os 3 maiores salarios são respectivamente:$PRIMEIRO, $SEGUNDO, $TERCEIRO"

