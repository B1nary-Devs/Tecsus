FROM postgres:latest

# Definir variáveis de ambiente para o PostgreSQL
ENV POSTGRES_DB=tecsusdb
ENV POSTGRES_USER=b1nary
ENV POSTGRES_PASSWORD=tecsus

# Copiar o script de inicialização e qualquer arquivo .sql necessário
COPY create_table_agua.sql /docker-entrypoint-initdb.d/
COPY init-script.sh /docker-entrypoint-initdb.d/init-script.sh

# Dar permissão de execução ao script
RUN chmod +x /docker-entrypoint-initdb.d/init-script.sh
