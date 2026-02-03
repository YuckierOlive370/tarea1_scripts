#!/bin/bash
#script que muestra el nombre de equipo, ip actual y espacio del disco
echo "++++++++INFORMACION DEL S.O++++++++"
echo "Nombre: $(hostname)"
echo "Ip Actual: "
ip addr show ens37 | grep "inet " | awk '{print $2}'
echo "Espacio actual: "
df -h / | awk 'NR==2{print $4 " libres de " $2 " totales"}'
echo "Fecha y hora:"
date
echo "+++++++++++++++++++++++++++++++++++"
