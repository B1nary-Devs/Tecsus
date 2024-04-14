-- Dimensão Contrato
CREATE TABLE dim_agua_contrato (
    Numero_Contrato SERIAL PRIMARY KEY,
    Nome_do_Contrato VARCHAR(255),
    Fornecedor VARCHAR(255),
    Modalidade VARCHAR(255),
    Forma_de_Pagamento VARCHAR(255),
    Tipo_de_Acesso VARCHAR(255),
    Vigencia_Inicial DATE,
    Vigencia_Final DATE,
    Observacao TEXT
);

-- Dimensão Cliente
-- Incluindo a chave estrangeira para Contrato, assumindo que cada cliente possui um contrato
CREATE TABLE dim_agua_cliente (
    Numero_Cliente SERIAL PRIMARY KEY,
    Numero_Contrato INTEGER  REFERENCES dim_agua_contrato(Numero_Contrato),
    Nome_cliente VARCHAR(255),
    cnpj BIGINT,
    Tipo_de_Consumidor VARCHAR(255),
    Modelo_de_Faturamento VARCHAR(255) 
);

-- Dimensão Localizacao
-- Incluindo a chave estrangeira para Cliente, assumindo que cada localização é única para um cliente
CREATE TABLE dim_agua_localizacao (
    Codigo_de_Ligacao_RGI VARCHAR(255) PRIMARY KEY,
    Endereco_de_Instalacao TEXT,
    Numero_Cliente INTEGER REFERENCES dim_agua_cliente(Numero_Cliente)
);

-- Dimensão Medidor
-- Adicionando relacionamento com Localização e Contrato
CREATE TABLE dim_agua_medidor (
    Numero_Medidor SERIAL PRIMARY KEY,
    Hidrometro VARCHAR(255),
    Codigo_de_Ligacao_RGI VARCHAR(255) REFERENCES dim_agua_localizacao(Codigo_de_Ligacao_RGI),
    Numero_Contrato INTEGER REFERENCES dim_agua_contrato(Numero_Contrato)
);

-- Tabela Fato Consumo
-- Se relaciona com todas as dimensões
CREATE TABLE fato_agua_consumo (
    Fato_agua_id SERIAL PRIMARY KEY,
    Planta VARCHAR(255),
    Conta_do_Mes VARCHAR(255),
    Serie_da_Nota_Fiscal VARCHAR(255),
    Numero_Nota_Fiscal VARCHAR(255),
    Vencimento DATE,
    Emissao DATE,
    Codigo_de_Barras VARCHAR(255),
    Chave_de_Acesso VARCHAR(255),
    Leitura_Anterior VARCHAR(255),
    Leitura_Atual VARCHAR(255),
    Consumo_de_Agua_m3 INTEGER,
    Consumo_de_Esgoto_m3 INTEGER,
    Valor_Agua FLOAT,
    Valor_Esgoto FLOAT,
    Total_R$ FLOAT,
    Nivel_de_Informacoes_da_Fatura VARCHAR(255),
    Observacoes TEXT,
    Multa_REF_VCTO FLOAT,
    Juros_de_Mora_REF_VCTO FLOAT,
    Atualizacao_Monetaria_REF_VCTO FLOAT,
    Numero_Instalacao VARCHAR(255),
    Numero_Cliente INTEGER REFERENCES dim_agua_cliente(Numero_Cliente),
    Numero_Medidor INTEGER REFERENCES dim_agua_localizacao(Numero_Medidor),
    Numero_Medidor INTEGER REFERENCES dim_agua_medidor(Numero_Medidor),
    Numero_Contrato INTEGER REFERENCES dim_agua_contrato(Numero_Contrato)
);
