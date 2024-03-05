create database db_escola;
use db_escola;

CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
nota float not null,
serie varchar(20) not null,
primary key (id)
);

INSERT INTO tb_alunos (nome, idade, nota, serie) 
VALUES("João Silva", 15,  8.5, "8º ano"),
("Maria Oliveira", 14,  6.2, "8º ano"),
("Carlos Santos", 16,  7.8, "1° Ano EM."),
("Julia Costa", 15, 9.2, "8º ano"),
("Lucas Pereira", 12,  5.5, "5º ano"),
("Ana Lima", 13,  8.0, "6º ano"),
("Pedro Almeida", 15,  7.3, "8º ano"),
("Isabela Rocha", 14,  6.9, "8º ano");

select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;

update tb_alunos set nota = 7.2 where id = 4;
