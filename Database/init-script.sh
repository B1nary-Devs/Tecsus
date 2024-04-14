#!/bin/bash
set -e

# Caminho para o pg_hba.conf
PG_HBA_CONF_PATH="/var/lib/postgresql/data/pg_hba.conf"

# Fazendo backup do pg_hba.conf original
cp $PG_HBA_CONF_PATH ${PG_HBA_CONF_PATH}.bak

# Alterando as regras de autenticação para 'md5' para conexões locais
# shellcheck disable=SC2028
echo "host all b1nary 0.0.0.0/0 trust
      
host all b1nary 127.0.0.1/32 trust
      host all b1nary ::1/128 trust" > $PG_HBA_CONF_PATH

# Adicionando as configurações padrão do pg_hba.conf ao final do arquivo
cat ${PG_HBA_CONF_PATH}.bak >> $PG_HBA_CONF_PATH

echo "Configurações do pg_hba.conf atualizadas."
