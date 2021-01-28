create table if not exists usuario (
	id  serial primary key,
	login varchar not null,
	senha varchar not null,
	nome varchar,
	telefone varchar,
	cep varchar,
	rua varchar,
	bairro varchar,
	cidade varchar,
	estado varchar,
	ibge varchar,
	fotobase64 varchar,
	contenttype varchar,
	curriculobase64 varchar,
	contenttypecurriculo varchar
);

create table if not exists produto (
	id  serial primary key,
	nome varchar, 
	quantidade decimal(10,2), 
	valor decimal(10,2)
);


create table if not exists telefone (
	id serial primary key,
	numero varchar, 
	tipo varchar,
	usuario int,
	constraint fk_usuario foreign key (usuario) references usuario(id)
);

INSERT INTO usuario
(login, senha, nome)
VALUES('teste', 'teste', 'teste');
