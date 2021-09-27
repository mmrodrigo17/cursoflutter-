create database if not exists infomoto;

use infomoto;

create table marcas
(
    idmarca varchar(5) not null,
    marca varchar(50) default null,
    habilitada boolean default true
);

insert into marcas values ('99999','marca de prueba', false)

create table modelo
(
    idmarca varchar(5) not null,
    idmodelo varchar(5) not null,
    codia varchar(10) not null,
    modelo varchar(50) default null,
    habilitado boolean default true,
    anio_desde int,
    anio_hasta int
);


create table precio
(
    idmarca varchar(5) not null,
    idmodelo varchar(5) not null,
    codia varchar(10) not null,
    precio int(11) default 0,
    habilitado boolean default true,
    anio int
);

