-- Dimensão Contrato
CREATE TABLE dim_agua_contrato (
    Numero_Contrato VARCHAR(255) PRIMARY KEY,
    Nome_do_Contrato VARCHAR(255) NOT NULL,
    Fornecedor VARCHAR(255) NOT NULL,
    Modalidade VARCHAR(255) NOT NULL,
    Forma_de_Pagamento VARCHAR(255) NOT NULL,
    Tipo_de_Acesso VARCHAR(255),
    Vigencia_Inicial DATE NOT NULL,
    Vigencia_Final DATE NOT NULL,
    Observacao TEXT
);

-- Dimensão Cliente
-- Incluindo a chave estrangeira para Contrato, assumindo que cada cliente possui um contrato
CREATE TABLE dim_agua_cliente (
    Numero_Cliente SERIAL PRIMARY KEY,
    Numero_Contrato VARCHAR(255) NOT NULL REFERENCES dim_agua_contrato(Numero_Contrato),
    Nome_cliente VARCHAR(255) NOT NULL,
    cnpj BIGINT NOT NULL,
    Tipo_de_Consumidor VARCHAR(255) NOT NULL,
    Modelo_de_Faturamento VARCHAR(255) NOT NULL
);

-- Dimensão Localizacao
-- Incluindo a chave estrangeira para Cliente, assumindo que cada localização é única para um cliente
CREATE TABLE dim_agua_localizacao (
    Codigo_de_Ligacao_RGI VARCHAR(255) PRIMARY KEY,
    Endereco_de_Instalacao TEXT NOT NULL,
    Numero_Cliente INTEGER REFERENCES dim_agua_cliente(Numero_Cliente)
);

-- Dimensão Medidor
-- Adicionando relacionamento com Localização e Contrato
CREATE TABLE dim_agua_medidor (
    Numero_Medidor SERIAL PRIMARY KEY,
    Hidrometro VARCHAR(255) NOT NULL,
    Codigo_de_Ligacao_RGI VARCHAR(255) REFERENCES dim_agua_localizacao(Codigo_de_Ligacao_RGI),
    Numero_Contrato VARCHAR(255) REFERENCES dim_agua_contrato(Numero_Contrato)
);

-- Tabela Fato Consumo
-- Se relaciona com todas as dimensões
CREATE TABLE fato_agua_consumo (
    Fato_agua_id SERIAL PRIMARY KEY,
    Planta VARCHAR(255) NOT NULL,
    Conta_do_Mes VARCHAR(255) NOT NULL,
    Serie_da_Nota_Fiscal VARCHAR(255) NOT NULL,
    Numero_Nota_Fiscal VARCHAR(255) NOT NULL,
    Vencimento DATE NOT NULL,
    Emissao DATE NOT NULL,
    Codigo_de_Barras VARCHAR(255) NOT NULL,
    Chave_de_Acesso VARCHAR(255) NOT NULL,
    Leitura_Anterior VARCHAR(255) NOT NULL,
    Leitura_Atual VARCHAR(255) NOT NULL,
    Consumo_de_Agua_m3 INTEGER NOT NULL,
    Consumo_de_Esgoto_m3 INTEGER NOT NULL,
    Valor_Agua FLOAT NOT NULL,
    Valor_Esgoto FLOAT NOT NULL,
    Total_R$ FLOAT NOT NULL,
    Nivel_de_Informacoes_da_Fatura VARCHAR(255),
    Observacoes TEXT,
    Multa_REF_VCTO FLOAT,
    Juros_de_Mora_REF_VCTO FLOAT,
    Atualizacao_Monetaria_REF_VCTO FLOAT,
    Numero_Instalacao VARCHAR(255) NOT NULL,
    Numero_Cliente INTEGER NOT NULL REFERENCES dim_agua_cliente(Numero_Cliente),
    Codigo_de_Ligacao_RGI VARCHAR(255) NOT NULL REFERENCES dim_agua_localizacao(Codigo_de_Ligacao_RGI),
    Numero_Medidor INTEGER NOT NULL REFERENCES dim_agua_medidor(Numero_Medidor),
    Numero_Contrato VARCHAR(255) NOT NULL REFERENCES dim_agua_contrato(Numero_Contrato)
);
