-- Insertarmos filas en la tabla 'colegios'
INSERT INTO colegios (idColegio, nombre, persona_contacto, tfno_contacto)VALUES
(1, 'Colegio Norte', 'Ana López', '600111222'),
(2, 'Colegio Sur', 'Luis Pérez', '600333444'),
(3, 'Colegio Este', 'María Garcia', '600555666');

-- Insertarmos filas en la tabla 'colegios_actividades'
INSERT INTO colegios_actividades (idColegio, idCharla, fecha, numero_asistentes) VALUES 
(1, 1, '2025-02-01', 50),
(1, 4, '2025-02-10', 40),
(2, 1, '2025-03-05', 30)