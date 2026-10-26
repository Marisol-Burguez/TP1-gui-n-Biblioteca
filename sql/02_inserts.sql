USE Biblioteca;
INSERT INTO CIUDAD VALUES (1,'San Juan'),(2,'Mendoza'),(3,'Córdoba');
INSERT INTO CAMPUS VALUES (1,'Campus Central',1),(2,'Campus Norte',2),(3,'Campus Sur',3);
INSERT INTO CARRERAS VALUES (1,'Desarrollo de Software',1),(2,'Administración',2),(3,'Derecho',3);
INSERT INTO ESTUDIANTES VALUES ('EST001','Ana','Pérez',28,'111','Centro 10',1),('EST002','Luis','Gómez',22,'222','Centro 20',1),('EST003','Carla','López',30,'333','Norte 10',2),('EST004','Diego','Ruiz',26,'444','Sur 10',3),('EST005','Lucía','Fernández',19,'555','Centro 50',1),('EST006','Pedro','Silva',18,'666','Norte 50',2);
INSERT INTO FUNCIONARIOS VALUES ('FUN001','Mario','Torres',55,'Centro 1','Regular',1),('FUN002','Laura','Díaz',38,'Centro 2','Buena',2),('FUN003','Sofía','Rojas',60,'Centro 3','Mala',3);
INSERT INTO AUTORES VALUES ('AUT001','Gabriel','Márquez'),('AUT002','María','Moreno'),('AUT003','Jorge','Borges'),('AUT004','Julio','Cortázar');
INSERT INTO EDITORIALES VALUES (1,'Editorial Andina','Argentina'),(2,'Editorial Horizonte','Chile'),(3,'Editorial Central','España');
INSERT INTO TIPO VALUES (1,'Novela'),(2,'Poesía'),(3,'Ensayo');
INSERT INTO BIBLIOTECA VALUES (1,'Biblioteca Central'),(2,'Biblioteca Norte'),(3,'Biblioteca Sur');
INSERT INTO LIBROS VALUES (101,'Cien años de soledad',1967,1,1,'AUT001',3),(102,'El otoño del patriarca',1975,1,1,'AUT001',1),(103,'Ficciones',1944,2,3,'AUT003',2),(104,'Rayuela',1963,3,1,'AUT004',3),(105,'Poemas del viento',2001,2,2,'AUT002',1),(106,'Historias del sur',2010,1,1,'AUT002',3),(107,'Libro sin préstamos',2022,3,3,'AUT003',1);
-- CURDATE mantiene siempre casos del mes anterior para la consulta 19.
INSERT INTO PRESTAMO VALUES ('EST001','FUN001',101,DATE_SUB(CURDATE(),INTERVAL 1 MONTH),NULL),('EST002','FUN001',102,DATE_SUB(CURDATE(),INTERVAL 1 MONTH),NULL),('EST003','FUN002',103,CURDATE(),NULL),('EST004','FUN003',104,DATE_SUB(CURDATE(),INTERVAL 2 MONTH),NULL),('EST005','FUN002',105,CURDATE(),NULL),('EST001','FUN002',106,CURDATE(),NULL);
-- El modelo impide varios préstamos de un mismo libro por la misma terna; se pueden repetir libros con otros estudiantes.
INSERT INTO PRESTAMO VALUES ('EST003','FUN001',101,CURDATE(),NULL),('EST004','FUN002',101,CURDATE(),NULL),('EST005','FUN001',102,CURDATE(),NULL);
