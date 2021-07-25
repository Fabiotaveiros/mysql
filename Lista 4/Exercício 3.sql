create table tb_categoria(
id int auto_increment,
tipoRemedio varchar (255) not null,
comoTomar varchar (255) not null,
doses varchar (255) not null, 
primary key (id)
);
insert into tb_categoria (tipoRemedio, comoTomar, doses) values ("referência", "Oral", "Uma dose por dia, até finalizar 30 dias");
insert into tb_categoria (tipoRemedio, comoTomar, doses) values ("referência", "Intravenoso", "Uma dose apenas");
insert into tb_categoria (tipoRemedio, comoTomar, doses) values ("Genérico", "Oral", "Duas doses ao dia, até finalizar 15 dias");
insert into tb_categoria (tipoRemedio, comoTomar, doses) values ("Similar", "Intramuscular", "Duas doses apenas");
insert into tb_categoria (tipoRemedio, comoTomar, doses) values ("genérico", "Oral", "Uma dose por dia, por 7 dias");

select * from tb_categoria;

create table tb_produto(
id int auto_increment,
categoria_id int not null,
preço decimal not null, 
nome varchar (255),
peso varchar (255),
obrigatórioReceita boolean,
farmáciaQueProduziu varchar (255),
Primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (preço, nome, peso,obrigatórioReceita,farmáciaQueProduziu, categoria_id ) values (17, "Dorflex", "50 comprimidos", false, "SANOFI AVENTIS",5);
insert into tb_produto (preço, nome, peso, obrigatórioReceita,farmáciaQueProduziu,categoria_id) values (3.55, "Dipirona", "500Mg", false, "Prati donaduzzi", 3);
insert into tb_produto (preço, nome, peso, obrigatórioReceita,farmáciaQueProduziu,categoria_id) values (29.90, "Rinosoro", "100ML", false, "Mantecorp", 5);
insert into tb_produto (preço, nome, peso, obrigatórioReceita,farmáciaQueProduziu,categoria_id) values (200.00, "Curoxim", "750mg", true, "GlaxoSmithKline", 2);
insert into tb_produto (preço, nome, peso, obrigatórioReceita,farmáciaQueProduziu,categoria_id) values (16.02, "Pastilhas para garganta", "16 unidades", false, "STREPSILS", 4);
insert into tb_produto (preço, nome, peso, obrigatórioReceita,farmáciaQueProduziu,categoria_id) values (6.09, "Clonazepam", "30 comprimidos", true, "ROCHE", 1);
insert into tb_produto (preço, nome, peso, obrigatórioReceita,farmáciaQueProduziu,categoria_id) values (25.90, "Zolpidem", "30 comprimidos", true, "Desconhecida", 1);
insert into tb_produto (preço, nome, peso, obrigatórioReceita,farmáciaQueProduziu,categoria_id) values (30.73, "Probiótico Enterogermina", "5 ml", false, "SANOFI AVENTIS", 5);

select * from tb_produto;
select * from tb_produto where preço > 50;
select * from tb_produto where preço between 3 and 60;
select * from tb_produto where nome like "%b%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.preço, tb_produto.nome, tb_categoria.comoTomar from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 2