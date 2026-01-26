-- Pruebas de borrado

-- Borrar un colegio con actividades
DELETE FROM colegios WHERE idColegio = 1;
-- El colegio con idColegio = 1 y sus actividades asociadas se eliminarán correctamente gracias al ON DELETE CASCADE

-- Borrar una charla que tiene actividades
DELETE FROM charlas WHERE idCharla = 1; -- Instrucción DELETE en conflicto con la restricción REFERENCE 'fk_asistencia_charla'. El conflicto ha aparecido en la base de datos 'Potencial_Digital_SQL', tabla 'dbo.Asistencia', column 'idCharla'.
-- Nos dara un error por el ON DELETE NO ACTION, ya que hay actividades asociadas a esta charla
-- Primero deberiamos borrar las actividades asociadas a esta charla y despues borrar la charla
DELETE FROM colegios_actividades WHERE idCharla = 1;
DELETE FROM charlas WHERE idCharla = 1;
-- (En este caso daria error porque idCharla esta asociado a la tabla asistencia, pero es solo un ejemplo de como funcionaria el ON DELETE NO ACTION)

-- Borrar un colegio sin actividades
DELETE FROM colegios WHERE idColegio = 3;


| Prueba | Acción                         | Resultado                                 |
| ------ | ------------------------------ | ----------------------------------------- |
| 1      | Borrar colegio con actividades | Se borra el colegio y sus actividades     |
| 2      | Borrar charla con actividades  | Error                                     |
| 3      | Borrar charla sin actividades  | Se borra correctamente                    |
| 4      | Borrar colegio sin actividades | Se borra correctamente                    |
