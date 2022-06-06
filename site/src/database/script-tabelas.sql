
create database movsec;

use movsec;

create table usuario(
ID_USUARIO int primary key auto_increment,
email varchar (45),
senha varchar(45)
);

create table score(
idScore int auto_increment,
fkUsuario int,
foreign key (fkUsuario) references usuario(ID_USUARIO),
primary key (idScore, fkUsuario),
jogadas int,
acertos int,
perdas int
) auto_increment = 100;

select * from usuario;
select * from score;
SELECT email, acertos FROM score JOIN usuario ON fkUsuario = ID_USUARIO ORDER BY acertos DESC;