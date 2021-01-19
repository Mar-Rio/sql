use pruebas;
drop table if exists texto;
create table texto (cadena varchar(32));
INSERT INTO texto VALUES ('d');
INSERT INTO texto VALUES ('a');
INSERT INTO texto VALUES ('A');
INSERT INTO texto VALUES ('b');
alter table texto modify cadena binary(32);
select * from texto order by cadena;
alter table texto modify cadena char(32);
INSERT INTO texto VALUES ('David');
INSERT INTO texto VALUES ('Ana');
INSERT INTO texto VALUES ('Alejandro');
create database videoteca;
USE videoteca ;
DROP TABLE IF EXISTS pelicula ;
CREATE TABLE pelicula ( titulo VARCHAR(64) ,
Soporte ENUM ('VHS' , 'DVD' ));
INSERT INTO pelicula VALUES ('Alien' , 'VHS');
INSERT INTO pelicula VALUES ('TRON', 'DVD');
select * from pelicula;
INSERT INTO pelicula VALUES ('Blade Runner', 'VCD');
SELECT soporte FROM pelicula ORDER BY CAST(soporte AS CHAR);
USE videoteca ;
DROP TABLE IF EXISTS pelicula ;
CREATE TABLE pelicula ( titulo VARCHAR(64) ,
Categoría SET('ciencia-ficcion', 'terror', 'thriller' )
);
INSERT INTO pelicula VALUES ('Alien', 'ciencia-ficcion,terror');
INSERT INTO pelicula VALUES ('Blade Runner', 'ciencia-ficcion,thriller');
INSERT INTO pelicula VALUES ('Contact' , 'ciencia-ficcion'); 