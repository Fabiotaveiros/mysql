create table tb_categoria(
id int auto_increment,
sabor varchar (255) not null, -- nome do sabor
tipoPizza varchar (255) not null, -- salgada ou doce
pedaços int not null, -- quantos pedaços tem a pizza
Primary key (id)
);
select * from tb_categoria;

insert into tb_categoria (sabor, tipoPizza, pedaços) values ("Queijo", "salgada", 8);
insert into tb_categoria (sabor, tipoPizza, pedaços) values ("Chocolate", "doce", 4);
insert into tb_categoria (sabor, tipoPizza, pedaços) values ("Camarão", "salgada", 8);
insert into tb_categoria (sabor, tipoPizza, pedaços) values ("Vegana", "salgada", 10);
insert into tb_categoria (sabor, tipoPizza, pedaços) values ("Romeo e julietta", "doce", 4);

select * from tb_categoria;

create table tb_pizza(
id int not null auto_increment,
categoria_id int not null,
preço int,
ingredientes varchar (255),
bordaRecheada boolean,
especial boolean,
TipoDeMassa varchar (255),
primary key (id),
Foreign key (categoria_id) references tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (1, 25, "Queijo tomate e manjericão", false, false, "Padrão");
insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (2, 35, "Chocolate e morango", false, false, "Fina");
insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (3, 65, "Camarão, queijo, alho poró", true, true, "Grossa");
insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (4, 50, "Rúcula com tomate seco", false, true, "Padrão");
insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (5, 35, "Queijo Branco goiabada e requeijão", false, false, "Fina");
insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (1, 20, "Queijo e tomate", false, false, "Padrão");
insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (2, 35, "Chocolate meio amargo, creme de leite e coco ralado", false, false, "Fina");
insert into tb_pizza (categoria_id, preço, ingredientes, bordaRecheada, especial, TipoDeMassa) values (4, 45, "Brócolis com catupiry", false, true, "Grossa");



select * from tb_pizza where preço > 45;
select * from tb_pizza where preço between 29 and 60;
select * from tb_pizza where ingredientes like "c%";

select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.preço, tb_pizza.ingredientes, tb_categoria.tipoPizza from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.tipoPizza like "%doce%"
