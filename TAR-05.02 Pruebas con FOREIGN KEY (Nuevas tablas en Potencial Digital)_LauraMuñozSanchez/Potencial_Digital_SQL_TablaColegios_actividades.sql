-- CREAMOS TABLA COLEGIOS_ACTIVIDADES
CREATE TABLE colegios_actividades (
    idReserva INT IDENTITY NOT NULL,
    idColegio INT NOT NULL DEFAULT 0,
    idCharla SMALLINT NULL,
    fecha DATE NOT NULL,
    numero_asistentes INT NOT NULL,
    CONSTRAINT PK_colegios_actividades PRIMARY KEY (idReserva), -- Definimos y le damos nombre a la PK
    CONSTRAINT FK_actividad_colegio FOREIGN KEY (idColegio) REFERENCES colegios(idColegio) ON DELETE CASCADE,  -- Definimos y le damos nombre a la FK con on delete cascade
    CONSTRAINT FK_actividad_charla FOREIGN KEY (idCharla) REFERENCES charlas(idCharla) ON DELETE NO ACTION  -- Definimos y le damos nombre a la FK con on delete no action  
);
