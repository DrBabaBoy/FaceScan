use facescan;
-- Permisos de Administradores Dashboard

CREATE USER 'adminUser'@'localhost' IDENTIFIED BY 'genesisxv';

GRANT SELECT, INSERT, UPDATE (idAdmin) ON facescan.Users TO 'adminUser'@'localhost';
GRANT SELECT, INSERT, UPDATE (idAdmin) ON facescan.Kardex TO 'adminUser'@'localhost';

CREATE USER 'anonymous'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'anonymous'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE USER 'view'@'localhost' IDENTIFIED BY 'view$';
GRANT ALL PRIVILEGES ON *.* TO 'view'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE USER 'auditor'@'localhost' IDENTIFIED BY 'view$';
GRANT SELECT ON *.* TO 'auditor'@'localhost';
FLUSH PRIVILEGES;