CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;

CREATE TABLE IF NOT EXISTS editorial (
	id_ed INT AUTO_INCREMENT PRIMARY KEY,
    nombre_editorial VARCHAR(100),
    nombre_comercial VARCHAR(50),
    num_contacto INT(9)
);

CREATE TABLE IF NOT EXISTS libros (
	id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
	autor VARCHAR(50) NOT NULL,
    resumen VARCHAR(500) DEFAULT NULL,
    unidades INT(2) DEFAULT NULL,
    id_ed INT,
    CONSTRAINT lib_ed_fk FOREIGN KEY(id_ed) REFERENCES editorial(id_ed)
);

INSERT INTO editorial (nombre_editorial, nombre_comercial, num_contacto) VALUES
('Planeta', 'Juan', 999999999),
('Debolsillo','Maria','333333333'),
('Alfaguara','Ana','666666666');

INSERT INTO libros (titulo, autor, resumen, unidades, id_ed) VALUES
('La Divina Comedia', 'Dante Alighieri', 'La Divina Comedia sigue el camino desde el centro de la Tierra, donde se halla Lucifer, hasta el dominio de Dios.', 7, 1),
('Cien Años de Soledad', 'Gabriel García Márquez', 'La historia de la familia Buendía a lo largo de siete generaciones en el mítico pueblo de Macondo.', 5, 1),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Las aventuras de un caballero que confunde la realidad con su imaginación, acompañado por su fiel escudero Sancho Panza.', 3, 3),
('1984', 'George Orwell', 'Una distopía sobre un régimen totalitario que vigila y controla cada aspecto de la vida humana.', 4, 2),
('El Principito', 'Antoine de Saint-Exupéry', 'La historia de un joven príncipe que explora diferentes planetas, incluyendo la Tierra, buscando comprender las emociones humanas.', 6, 2),
('Matar a un Ruiseñor', 'Harper Lee', 'Un relato conmovedor sobre la injusticia racial y la pérdida de la inocencia en el sur de los Estados Unidos.', 3, 3),
('El Jardín de los Secretos', 'Isabel Fernández', 'Una novela que explora los misterios ocultos de una mansión abandonada, donde una joven descubre secretos familiares que cambiarán su vida para siempre.', 4, 1);


