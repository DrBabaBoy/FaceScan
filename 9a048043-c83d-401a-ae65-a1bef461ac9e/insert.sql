use facescan;

DELIMITER //

CREATE TRIGGER insertarUsuario AFTER INSERT ON Kardex
FOR EACH ROW
BEGIN

    INSERT INTO Users (idKardex, nombre)
    VALUES (NEW.idKardex, NEW.nombre);

END //

DELIMITER ;


INSERT INTO Kardex (idKardex, nombre, matricula, carrera)
VALUES ('0001', 'Alejandra', '21080719', 'Petrolera');

INSERT INTO Kardex (idKardex, nombre, matricula, carrera)
VALUES ('0002', 'Ayyslet', '21080717', 'Petrolera');

INSERT INTO Kardex (idKardex, nombre, matricula, carrera)
VALUES ('0003', 'soma', '21080852', 'Petrolera');

INSERT INTO Kardex (idKardex, nombre, matricula, carrera)
VALUES ('0004', 'Luis', '21080842', 'Petrolera');


INSERT INTO loginadmin (username,password)
VALUES ('Daniel','Dorito$');

INSERT INTO loginadmin (username,password)
VALUES ('Ayyslet','Dorito$');

INSERT INTO loginadmin (username,password)
VALUES ('One','1');
