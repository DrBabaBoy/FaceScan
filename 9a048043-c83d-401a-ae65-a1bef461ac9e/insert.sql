use facescan;

DELIMITER //

CREATE TRIGGER insertarUsuario AFTER INSERT ON Kardex
FOR EACH ROW
BEGIN

    INSERT INTO Users (idKardex, nombre)
    VALUES (NEW.idKardex, NEW.nombre);

END //

DELIMITER ;

INSERT INTO Kardex (nombre, matricula, carrera)
VALUES
('Carlos', '21080720', 'Petrolera'),
('María', '21080721', 'Petrolera'),
('Javier', '21080722', 'Petrolera'),
('Isabel', '21080723', 'Petrolera'),
('Roberto', '21080724', 'Petrolera'),
('Ana', '21080725', 'Petrolera'),
('Luis', '21080726', 'Petrolera'),
('Patricia', '21080727', 'Petrolera'),
('Daniel', '21080728', 'Petrolera'),
('Laura', '21080729', 'Petrolera'),
('José', '21080730', 'Petrolera'),
('Carmen', '21080731', 'Petrolera'),
('David', '21080732', 'Petrolera'),
('Teresa', '21080733', 'Petrolera'),
('Francisco', '21080734', 'Petrolera'),
('Sofía', '21080735', 'Petrolera'),
('Antonio', '21080736', 'Petrolera'),
('Marta', '21080737', 'Petrolera'),
('Juan', '21080738', 'Petrolera'),
('Lucía', '21080739', 'Petrolera');

INSERT INTO Kardex (nombre, matricula, carrera)
VALUES
('Fernando', '21080740', 'Petrolera'),
('Gabriela', '21080741', 'Petrolera'),
('Ricardo', '21080742', 'Petrolera'),
('Sara', '21080743', 'Petrolera'),
('Miguel', '21080744', 'Petrolera'),
('Andrea', '21080745', 'Petrolera'),
('Jorge', '21080746', 'Petrolera'),
('Lorena', '21080747', 'Petrolera'),
('Pedro', '21080748', 'Petrolera'),
('Susana', '21080749', 'Petrolera'),
('Alejandro', '21080750', 'Petrolera'),
('Cecilia', '21080751', 'Petrolera'),
('Raúl', '21080752', 'Petrolera'),
('Beatriz', '21080753', 'Petrolera'),
('Guillermo', '21080754', 'Petrolera'),
('Rosa', '21080755', 'Petrolera'),
('Eduardo', '21080756', 'Petrolera'),
('Silvia', '21080757', 'Petrolera'),
('Hugo', '21080758', 'Petrolera'),
('Patricia', '21080759', 'Petrolera'),
('Óscar', '21080760', 'Petrolera'),
('Verónica', '21080761', 'Petrolera'),
('Sergio', '21080762', 'Petrolera'),
('Martha', '21080763', 'Petrolera'),
('Enrique', '21080764', 'Petrolera'),
('Leticia', '21080765', 'Petrolera'),
('Roberto', '21080766', 'Petrolera'),
('Claudia', '21080767', 'Petrolera'),
('Carlos', '21080768', 'Petrolera'),
('Yolanda', '21080769', 'Petrolera'),
('José', '21080770', 'Petrolera'),
('Teresa', '21080771', 'Petrolera'),
('Javier', '21080772', 'Petrolera'),
('Alicia', '21080773', 'Petrolera'),
('Raúl', '21080774', 'Petrolera'),
('Ana', '21080775', 'Petrolera'),
('Luis', '21080776', 'Petrolera'),
('Patricia', '21080777', 'Petrolera'),
('Daniel', '21080778', 'Petrolera'),
('Laura', '21080779', 'Petrolera'),
('José', '21080780', 'Petrolera'),
('Carmen', '21080781', 'Petrolera'),
('David', '21080782', 'Petrolera'),
('Teresa', '21080783', 'Petrolera'),
('Francisco', '21080784', 'Petrolera'),
('Sofía', '21080785', 'Petrolera'),
('Antonio', '21080786', 'Petrolera'),
('Marta', '21080787', 'Petrolera'),
('Juan', '21080788', 'Petrolera'),
('Lucía', '21080789', 'Petrolera');


INSERT INTO loginadmin (username,password)
VALUES ('Daniel','Dorito$');

INSERT INTO loginadmin (username,password)
VALUES ('Ayyslet','Dorito$');

INSERT INTO loginadmin (username,password)
VALUES ('One','1');

INSERT INTO loginadmin (username, password)
VALUES ('user','admin');