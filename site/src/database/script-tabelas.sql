
create database movsec;

use movsec;

create table usuario(
ID_USUARIO int,
email varchar (45),
senha varchar(45)
);

create table score(
idScore int,
fkUsuario int,
foreign key (fkUsuario) references usuario.ID_USUARIO,
primary key (idScore, fkUsuario),
jogadas int,
acertos int,
erros int
);


