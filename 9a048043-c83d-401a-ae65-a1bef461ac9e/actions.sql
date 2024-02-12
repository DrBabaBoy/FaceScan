use facescan;


-- LoginAdmin


-- Función: Función para contar el número total de administradores.

DELIMITER //
CREATE FUNCTION TotalAdmins() RETURNS INT DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM LoginAdmin;
    RETURN total;
END //
DELIMITER ;

-- Procedimiento: Procedimiento para obtener los últimos 10 administradores agregados.

DELIMITER //
CREATE PROCEDURE GetLatestAdmins()
BEGIN
    SELECT * FROM LoginAdmin ORDER BY idAdmin DESC LIMIT 10;
END //
DELIMITER ;

-- Función: Función para obtener el nombre de usuario del administrador más reciente.

DELIMITER //
CREATE FUNCTION GetLatestAdminUsername() RETURNS VARCHAR(255) DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE latest_username VARCHAR(255);
    SELECT username INTO latest_username FROM LoginAdmin ORDER BY idAdmin DESC LIMIT 1;
    RETURN latest_username;
END //
DELIMITER ;



-- LoginAdmin



-- Función: Función para contar el número total de registros en Kardex.

DELIMITER //
CREATE FUNCTION TotalKardex() RETURNS INT DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Kardex;
    RETURN total;
END //
DELIMITER ;

-- Procedimiento: Procedimiento para obtener los últimos 10 registros agregados a Kardex.

DELIMITER //
CREATE PROCEDURE GetLatestKardex()
BEGIN
    SELECT * FROM Kardex ORDER BY idKardex DESC LIMIT 10;
END //
DELIMITER ;

-- Función: Función para obtener el nombre del estudiante con la matrícula más reciente.

DELIMITER //
CREATE FUNCTION GetLatestStudentName() RETURNS VARCHAR(255) DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE latest_student_name VARCHAR(255);
    SELECT nombre INTO latest_student_name FROM Kardex ORDER BY idKardex DESC LIMIT 1;
    RETURN latest_student_name;
END //
DELIMITER ;



-- Usuarios


-- Función: Función para contar el número total de usuarios.

DELIMITER //
CREATE FUNCTION TotalUsers() RETURNS INT DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Users;
    RETURN total;
END //
DELIMITER ;


-- Procedimiento: Procedimiento para obtener los últimos 10 usuarios agregados.

DELIMITER //
CREATE PROCEDURE GetLatestUsers()
BEGIN
    SELECT * FROM Users ORDER BY idUser DESC LIMIT 10;
END //
DELIMITER ;


-- Función: Función para obtener el nombre del usuario más reciente.

DELIMITER //
CREATE FUNCTION GetLatestUserName() RETURNS VARCHAR(255) DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE latest_user_name VARCHAR(255);
    SELECT nombre INTO latest_user_name FROM Users ORDER BY idUser DESC LIMIT 1;
    RETURN latest_user_name;
END //
DELIMITER ;


-- AuditLog


-- Función: Función para contar el número total de acciones registradas en AuditLog.

DELIMITER //
CREATE FUNCTION TotalActions() RETURNS INT DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM AuditLog;
    RETURN total;
END //
DELIMITER ;

-- Procedimiento: Procedimiento para obtener las últimas 10 acciones registradas.

DELIMITER //
CREATE PROCEDURE GetLatestActions()
BEGIN
    SELECT * FROM AuditLog ORDER BY id DESC LIMIT 10;
END //
DELIMITER ;

-- Función: Función para obtener la acción más comúnmente registrada.

DELIMITER //
CREATE FUNCTION MostCommonAction() RETURNS VARCHAR(50) DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE common_action VARCHAR(50);
    SELECT action INTO common_action FROM AuditLog GROUP BY action ORDER BY COUNT(*) DESC LIMIT 1;
    RETURN common_action;
END //
DELIMITER ;

