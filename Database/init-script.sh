#!/bin/bash
# init-script.sh

# Aguardar o servidor PostgreSQL iniciar
echo "Aguardando o PostgreSQL ficar pronto..."
sleep 10


# Executar o psql ou qualquer comando SQL que você deseja
psql -U b1nary -d tecsusdb

# Manter o container rodando após a execução dos comandos
exec "$@"


