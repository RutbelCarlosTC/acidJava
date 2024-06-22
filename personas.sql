-- Borrar la base de datos si ya existe
DROP DATABASE IF EXISTS personas;

-- Crear la base de datos
CREATE DATABASE personas;

-- Usar la base de datos recién creada
USE personas;

-- Crear las tablas necesarias y agregar datos
CREATE TABLE miTabla (
    id VARCHAR(10) PRIMARY KEY,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE miOtraTabla (
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad INT NOT NULL
);

