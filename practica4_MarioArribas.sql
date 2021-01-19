use videoteca;
drop table if exists actor;
create table actor(id integer not null, nombre varchar(64),
apellidos varchar(128));
insert into actor values(1,'Mario','Arribas'),(2,'John','Huston'),(3,'Luis','Cuenca Garcia');
alter table peliculas drop column actor;
select * from peliculas;
SELECT * FROM actor;
SELECT nombre, apellidos FROM actor;
SELECT id, CONCAT (nombre, ' ', apellidos ) FROM actor; 
SELECT id, CONCAT (nombre, ' ', apellidos ) AS nombre FROM actor ;
SELECT id, CONCAT (nombre, ' ', apellidos ) AS nombre FROM actor
ORDER BY apellidos, nombre;
SELECT id, CONCAT (nombre, ' ', apellidos ) AS nombre FROM actor
ORDER BY 2;
SELECT COUNT(*) FROM actor;
SELECT COUNT(*) actores FROM actor; 

use pruebas;
select * from alumnosDAW where edad < 23 and nombre <>'Jose';
select * from alumnosDAW where apellidos like '%ui%';
select nombre from alumnosDAW having max(edad);
select AVG(edad) from alumnosDAW;
alter table alumnosDAW change edad fecha_nacimiento date not null;
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(1, 'Mario', 'Arribas', 19760302,687088015);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(2, 'Juan', 'Olmeda',19900226, 576746343);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(3, 'Jimmy','Koker', 20000220, 660576435);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(4, 'Adrian', 'Lopez',20000110, 645465435);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(5, 'Elena', 'Monleon',20000510,698555664);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(6, 'Adrian', 'Pardo',20010517, 676989040);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(7, 'Angel','Aparicio', 20001225, 660600600);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(8, 'Carlos', 'Garcia',20000320, 685333920);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(9, 'Sajeel', 'Alend', 20010618, 685773226);
insert into alumnosDAW (id, nombre, apellidos, edad, telefono) values 
(10, 'Rocio', 'Blasco',20020518, 676888510);
select nombre from alumnosDAW where fecha_nacimiento > 19990119;
alter table alumnosDAW add curso enum ('1ºDAW' , '2ºDAW');
SELECT CONCAT (nombre, ' ', apellidos ) AS nombre FROM alumnosDAW where curso ='2ºDAW';