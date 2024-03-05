CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(50) not null,
salario decimal(6,2) not null,
data_admissao date,
departamento varchar(255) not null,
primary key (id)
);

INSERT INTO tb_colaboradores(nome, cargo , salario , data_admissao , departamento)
values 
("José Carlos", "Desenvolvedor jr.", "3500.00" , "2022-06-05", "TI"),
("Maria Beatriz", "Desenvolvedora sr.", "5000.00" , "2023-07-25", "TI"),
("Bruna Souza", "Supervisora Projetos", "8000.00" , "2019-02-02", "TI"),
("Matheus Ulisses", "Analista Banco de dados", "7200.00" , "2023-06-30", "TI"),
("Barbara Costa", "Supervisora RH", "8000.00" , "2016-11-27", "Administrativo");


select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario < 2000.00;
update tb_colaboradores set salario = 5000.00 where id = 1;
select * from tb_colaboradores