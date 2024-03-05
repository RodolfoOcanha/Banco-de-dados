CREATE TABLE tb_produtos(
id bigint auto_increment,
marca varchar(255) not null,
descricao varchar(50) not null,
preco decimal(10,2) not null,
estoque int,
cor varchar(255) not null,
primary key (id)
);

insert into tb_produtos( marca, descricao , preco , estoque , cores)
values ("Gucci" , "Camiseta" , "1499.00" , "10" , "Branco"),
("Louis Vuitton" , "Casaco" , "7000.00" , "5" , "Azul"),
("Hermes" , "Cinto" , "400.00" , "5" , "Preto"),
("Saint Laurent" , "Sobretudo" , "10000.00" , "2" , "Marrom"),
("Dolce Gabbana" , "Tenis" , "6000.00" , "10" , "Branco/Preto"),  
("Balenciaga" , "Tenis" , "12000.00" , "10" , "Cinza/Branco"),
("Nike" , "Shorts" , "120.00" , "15" , "Preto"),
("Jordan" , "Tenis" , "1900.00" , "15" , "Roxo/Marrom");

/*select * from tb_produtos*/
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 10000.00 where id = 6;
select * from tb_produtos