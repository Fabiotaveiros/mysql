
create table tb_personagem (
nome varchar (255) not null,
ataque int, 
defesa int,
mana int,
raça varchar (255),
id int not null auto_increment,
classe_id int not null,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);


select * from tb_personagem;

insert into tb_classe (classe, proficiência, perícia) values ("mago", "magia", "conhecimento");
insert into tb_classe (classe, proficiência, perícia) values ("arcanista", "curar_pelas_mãos", "atuação");
insert into tb_classe (classe, proficiência, perícia) values ("feiticeiro", "invocação", "conhecimento");
insert into tb_classe (classe, proficiência, perícia) values ("bardo", "instrumentos_musicais", "contar_histórias");
insert into tb_classe (classe, proficiência, perícia) values ("assasino", "disfarce", "enganação");


insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Ophior", 2100, 200, 4000, "humano", 1);
insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Gustav", 1800, 450, 5000, "humano", 2);
insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Magisk", 2200, 300, 3500, "elfo", 3);
insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Simphonum", 1000, 500, 1500, "elfo", 4);
insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Elzio", 5000, 100, 150, "Bosmer", 5);
insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Carmeline", 4750, 100, 150, "Argonian", 5);
insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Clarium", 1000, 425, 3000, "Meio-elfo bardo", 4);
insert into tb_personagem (nome, ataque, defesa, mana, raça, classe_id) values ("Magisterium", 6000, 100, 10000, "ladino", 2);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 100 and 200;
select * from tb_personagem where nome like "%c%";

select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.classe from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where tb_classe.classe like "%Assasino%";

select * from tb_personagem;