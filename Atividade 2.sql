create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id BIGINT auto_increment,
nome VARCHAR(50),
descricao_categoria VARCHAR(255),
PRIMARY KEY (id)
);

insert into tb_categorias(nome,descricao_categoria) values
("Salgada" , "Pizza Salgada"),
("Vegetariana" , "Pizza Vegetariana"),
("Doce" , "Pizza Doce"),
("Especial" , "Pizza Especial"),
("Clássica" , "Pizza Clássica");


create table tb_pizzas(
id bigint primary key,
nome_pizza varchar(50),
preco decimal(6,2),
ingredientes varchar(255),
fk_tipos BIGINT,
foreign key (fk_tipos) references tb_categorias(id)
);

insert into tb_pizzas( id ,  nome_pizza, preco, ingredientes, fk_tipos) value
(1, "Calabresa" , 57.90 , "Molho de tomate, queijo mussarela, calabresa, cebola", 5),
(2, "Frango c/ catupiry" , 57.90 , "Molho de tomate, queijo mussarela, Frango, catupiry", 5),
(3, "Brocólis com champignon" , 60.99 , "Molho de tomate, queijo mussarela, Brocólis, champignon e alho frito", 2),
(4, "Morango com nutella" , 64.99 , "Morango e nutella", 3),
(5, "Mussarela" , 45.99 , "Molho de tomate, queijo mussarela, tomate", 1),
(6, "Champignon, bacon e parmesão" , 55.00 , "Molho de tomate, queijo mussarela, champignon , bacon , parmesão", 4),
(7, "Banana e canela" , 55.00 , " Queijo mussarela, banana, canela, leite condensado", 3),
(8, "Brie com mel" , 55.00 , "Molho de tomate, queijo mussarela, queijo brie, mel", 4);

SELECT * from tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.fk_tipos = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.fk_tipos = tb_categorias.id WHERE tb_categorias.nome = 'Doce';

