#!/bin/bash

#--------------------------------------------------
# Aqui hago una validacion de la variable "SCALEFT" y en funcion de su valor pongo un token u otro 

# Realizar acciones específicas para el env Prod
if [[ "${SCALEFT}" == "Prod" ]]; then
  echo "Ejecutando el token para el env Prod"
  sudo echo 'Put-token-prod' > /tmp/enrollment.token

# Realizar acciones específicas para el env nonProd
elif [[ "${SCALEFT}" == "nonProd" ]]; then
  echo "Ejecutando el token para el env nonProd"
  sudo echo 'Put-token-non-prod' > /tmp/enrollment.token

else
  echo "Valor desconocido para Scaleft"
  exit 1
fi
