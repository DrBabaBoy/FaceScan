-- Creación de la base de datos
show databases;
CREATE DATABASE facescan;
USE facescan;

-- Creación de la tabla LoginAdmin
CREATE TABLE LoginAdmin (
    idAdmin INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255)
);

-- Creación de la tabla Kardex
CREATE TABLE Kardex (
    idKardex INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    matricula VARCHAR(50),
    carrera VARCHAR(255),
    idAdmin INT,
    FOREIGN KEY (idAdmin) REFERENCES LoginAdmin(idAdmin)
);

-- Creación de la tabla Usuarios
CREATE TABLE Users (
    idUser INT AUTO_INCREMENT PRIMARY KEY,
    idKardex INT,
    nombre VARCHAR(255),
    tipoAcceso VARCHAR(50),
    foto BLOB,
    idAdmin INT,
    FOREIGN KEY (idKardex) REFERENCES Kardex(idKardex),
    FOREIGN KEY (idAdmin) REFERENCES LoginAdmin(idAdmin)
);

-- Creación de la tabla Validacion
CREATE TABLE Validacion (
    RegValidacion INT AUTO_INCREMENT PRIMARY KEY,
    idUser INT,
    foto BLOB,
    fechaValidacion DATETIME,
    horaValidacion TIME,
    FOREIGN KEY (idUser) REFERENCES Users(idUser)
);

CREATE TABLE AuditLog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(50),
    user VARCHAR(255),
    timestamp DATETIME
);


-- drop database facescan