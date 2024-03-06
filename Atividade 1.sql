create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id BIGINT auto_increment primary key,
nome_classe VARCHAR (30),
tipo_atributo VARCHAR (30)
);

insert into tb_classes (nome_classe , tipo_atributo) Values
("Guerreiro" , "Força"),
("Mago" , "Inteligência"),
("Ninja" , "Velocidade"),
("Cavaleiro" , "Defesa"),
("Shama" , "Magia");

create table tb_personagens(
id_personagem BIGINT  primary key,
nome_personagem VARCHAR (30),
ataque bigint,
defesa bigint,
velocidade bigint,
id bigint,
FOREIGN KEY (id) REFERENCES tb_classes(id)
);

insert into tb_personagens(id_personagem , nome_personagem , ataque , defesa , velocidade, id)values
(1, "Guerreiro Partizan" ,  1500 , 2000 , 500, 1 ),
(2, "Mago Cura" ,  500 , 1000 , 1000, 2  ),
(3, "Ninja Adagas " ,  1500 , 1000 , 1000, 3 ),
(4, "Guerreiro Cavaleiro" ,  1000 , 2000 , 1000,4 ),
(5, "Shama Dragão " ,  1000 , 1200 , 7000 , 5 ),
(6, "Guerreiro Combatente" ,  1300 , 2200 , 500 , 1 ),
(7, "Ninja Arqueiro" ,  2000 , 700 , 1000 , 3 ),
(8, "Cavaleiro Centauro" ,  1700 , 2000 , 1000 , 4 );

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_personagem = tb_classes.id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.fk_id = tb_classes.id WHERE tb_classes.nome_classe = 'Guerreiro';

ALTER TABLE tb_personagens
CHANGE COLUMN id_classe fk_id BIGINT;




