-- CREAMOS LA TABLA LLAMADA COLEGIOS
CREATE TABLE colegios (
    idColegio INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    persona_contacto VARCHAR(100) NOT NULL,
    tfno_contacto CHAR(13) NOT NULL,
    CONSTRAINT PK_colegios PRIMARY KEY (idColegio) -- Definimos y le damos nombre a la PK
);


-- INSERTAMOS FILA EN LA TABALA COLEGIOS
INSERT INTO colegios
VALUES (0, 'plazas disponibles', 'no procede', 'no procede');