CREATE TABLE fabricante (
    cnpj CHAR(14) NOT NULL,
    nome VARCHAR(80) NOT NULL,
    PRIMARY KEY (cnpj)
);

CREATE TABLE modelo (
    codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(80) NOT NULL,
    cnpj_fabricante CHAR(14) NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cnpj_fabricante) REFERENCES fabricante (cnpj)
);

CREATE TABLE carro (
    chassi CHAR(20) NOT NULL,
    placa CHAR(8) NOT NULL,
    cpf_proprietario CHAR(11) NOT NULL,
    nome_proprietario VARCHAR(50) NOT NULL,
    cod_modelo INT NOT NULL,
    PRIMARY KEY (chassi),
    FOREIGN KEY (cod_modelo) REFERENCES modelo (codigo),
    UNIQUE (placa)
);