drop database if exists pruebas;
create database pruebas;
use pruebas;
create table persona (id integer not null,
nombre varchar(16) not null,
apellidos varchar(64) not null default'');
alter table persona modify nombre varchar(32) not null,
add edad integer not null,
add telefono varchar(12);
rename table persona to alumnosDAW;
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(1, 'Mario', 'Arribas', 44,687088015);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(2, 'Juan', 'Olmeda',26, 576746343);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(3, 'Jimmy','Koker', 20, 660576435);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(4, 'Adrian', 'Lopez',110, 645465435);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(5, 'Elena', 'Monleon',20,698555664);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(6, 'Adrian', 'Pardo',17, 676989040);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(7, 'Angel','Aparicio', 25, 660600600);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(8, 'Carlos', 'Garcia',20, 685333920);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(9, 'Sajeel', 'Alend', 18, 685773226);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(10, 'Rocio', 'Blasco',18, 676888510);
drop table alumnosDAW;
select * from alumnosDAW;/*No existe alumnosDAW*/

use pruebas;
drop table if exists texto;
create table texto (cadena varchar(32));
INSERT INTO texto VALUES ('d');
INSERT INTO texto VALUES ('a');
INSERT INTO texto VALUES ('A');
INSERT INTO texto VALUES ('b');
alter table texto modify cadena binary(32);
select * from texto order by cadena;


