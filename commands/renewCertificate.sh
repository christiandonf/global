#!/bin/bash
# Renova certificados SSL expirados
echo "Iniciando renovação de certificados..."

COMPOSER_FILE="/var/opt/workspace/global/docker-compose.yml"

docker compose -f "$COMPOSER_FILE" run --rm sslbot renew

if [ $? -eq 0 ]; then
  echo -e "\n✅ Certificados renovados com sucesso!"
else
  echo -e "\n❌ Falha na renovação dos certificados!"
  exit 1
fi