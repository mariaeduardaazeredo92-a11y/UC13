
create DATABASE if not exist ecommerce_pc
default CHARACTER ser 'utf8mb4';
use ecommerce_pc;

create table cliente (

id_cliente int PRIMARY key auto_increment,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
senha VARCHAR(100) NOT NULL,
endereco TEXT,
    criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);

create Table categoria (
id_categoria PRIMARY key auto_increment NOT NULL,
nome_categoria VARCHAR(100) NOT NULL,
descricao_categoria text,
criado_em datetime DEFAULT current_timestamp
);

create Produto (
id_produto PRIMARY key auto_increment not null,
nome_produto VARCHAR(100),
descricao TEXT,
preco DECIMAL(10,2)NOT NULL,
estoque int default 0, 
categoria_id INT,
criado_em DATETIME default current_timestamp
Foreign Key (categoria_id) REFERENCES categoria(id)
);

Create pedido (
id_pedido PRIMARY key auto_increment not null,
pedido_id int,
produtos_id int,
quantidade int,
preco_unitario decimal,
criado_em default current_timestamp
status varchar (50) default 'Em_andamento',
Foreign Key (cliente_id) REFERENCES cliente(id)
);
create Item_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    item_id int not null,
    produto_comprado int not null,
    quantidade int,
    preco_unitario decimal(10,2),
    criado_em default current_timestamp
);


