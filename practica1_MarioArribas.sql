drop database if exists videoteca;
create database videoteca;
use videoteca;
drop table if exists peliculas;
create table peliculas(titulo varchar(64),
director varchar(128), actor varchar(128));
insert into peliculas (titulo, director, actor)
values ('Blade Runner', 'Ridley Scott', 'Harrison Ford');
INSERT INTO peliculas (titulo, director, actor)
VALUES ('Alien', 'Ridley Scott', 'Sigourney Weaver');
INSERT INTO peliculas (titulo, director, actor)
VALUES ('Doce monos', 'Terry Gilliam','Bruce Willis');
INSERT INTO peliculas (titulo, director, actor)
VALUES ('Contact', 'Robert Zemeckis', 'Jodie Foster');
INSERT INTO peliculas (titulo, director, actor)
VALUES ('Tron', 'Steven Lisberger', 'Jeff Bridges');
INSERT INTO peliculas (titulo, director, actor)
VALUES ('La guerra de las galaxias', 'George Lucas',
'Harrison Ford');
select * from peliculas where director ='Ridley Scott';
select titulo from peliculas where director = 'Ridley Scott'
order by titulo;
update peliculas set titulo='Star Wars' 
where titulo='La guerra de las galaxias';
delete from peliculas where titulo='Star Wars';
delete from peliculas where actor='Harrison Ford';