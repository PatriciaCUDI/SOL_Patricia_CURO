--Insertar Informaci�n
USE UPC
GO

SET DATEFORMAT dmy;  
GO 

Print 'Ejecuta TipoUsuario'
INSERT INTO TipoUsuario VALUES ('Docente');
INSERT INTO TipoUsuario  VALUES ('Alumno');

Print 'Ejecuta TipoPrestamo'
INSERT INTO TipoPrestamo VALUES ('Lectura en Biblioteca');
INSERT INTO TipoPrestamo VALUES ('Retiro a Casa');

Print 'Ejecuta Usuario'
INSERT INTO Usuario VALUES ('10412577', 'Tatiana', 'Barrios Zegarra', 'pbarrioz@gmail.com', '995784010', 1);
INSERT INTO Usuario VALUES ('78593246', 'Maritza', 'cruz santisima', 'mcruzsanti@gmail.com', '993261041', 2);

Print 'Ejecuta Libro'
INSERT INTO Libro VALUES ('Mi planta de Naranja Lima', 'Novela', 'Jos� Mauro de Vasconcelos', 'Brasil', '1968', 'Edi��es Melhoramentos');
INSERT INTO Libro VALUES ('Chicas de Alambre', 'Novela hist�rica', 'Jordi Sierra i Fabra', 'Espa�a', '1999', 'Alfaguara');
INSERT INTO Libro VALUES ('Los ojos de mi princesa', 'Literatura juvenil', 'Carlos Cuauht�moc S�nchez', 'M�xico', '1996', 'diamante');
INSERT INTO Libro VALUES ('La fuerza de sheccid', 'Literatura juvenil', 'Carlos Cuauht�moc S�nchez', 'M�xico', '2004', 'diamante');

Print 'Ejecuta Prestamo'
INSERT INTO Prestamo VALUES (1, 1, '12/12/2020', 2, 1, DATEADD(DAY, 1, '12/12/2020'));
INSERT INTO Prestamo VALUES (4, 2, '13/12/2020', 1, 2, DATEADD(DAY, 1, '13/12/2020'));
