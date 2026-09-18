#CREATE DATABASE restaurante;

USE restaurante;

CREATE TABLE funcionarios(

    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(14),
    data_nascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    data_admissao DATE
    
) COMMENT= "tabela de funcionários do restaurante";

CREATE TABLE clientes(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(14),
    data_nascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR (100),
    data_cadastro DATE

) COMMENT= "tabela de clientes do restaurante";

CREATE TABLE produtos(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    preco DECIMAL(10, 2),
    categoria VARCHAR(100)
) COMMENT= 'tabela de produtos  do restaurante';

CREATE TABLE pedidos(
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    CONSTRAINT FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    id_funcionario INT,
    CONSTRAINT FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario),
    id_produto INT,
    CONSTRAINT FOREIGN KEY (id_produto) REFERENCES produtos (id_produto),
    quantidade INT,
    preco DECIMAL(10, 2),
    data_pedido DATE,
    status_pedido VARCHAR(50)
) COMMENT= 'tabela de pedidos';

CREATE TABLE info_produtos(
    id_info INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    CONSTRAINT FOREIGN KEY (id_produto) REFERENCES produtos (id_produto),
    ingredientes TEXT,
    fornecedor VARCHAR (255)
) COMMENT= 'tabela de informação dos produtos';









