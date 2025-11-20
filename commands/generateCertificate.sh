#!/bin/bash
# Gera novos certificados SSL com desafio DNS
DOMAINS=(-d nexuswebdigital.com -d *.nexuswebdigital.com)
EMAIL="markin-work@gmail.com"
COMPOSER_FILE="/var/opt/workspace/global/docker-compose.yml"
docker compose -f "$COMPOSER_FILE" run --rm sslbot certonly \
  --manual \
  --preferred-challenges dns \
  "${DOMAINS[@]}" \
  --email "$EMAIL" \
  --agree-tos \
  --no-eff-email

# Verifica se o comando anterior foi executado com sucesso
if [ $? -eq 0 ]; then
  echo -e "\n✅ Certificado gerado com sucesso!"
else
  echo -e "\n❌ Falha na geração do certificado!"
  exit 1
fi
