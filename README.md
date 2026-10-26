# TP N.º 1 SQL — Biblioteca (MySQL 8)

## Contenido
- `doc/`: enunciado original, DER, preguntas y requerimientos.
- `sql/`: creación, datos, 20 consultas, ALTER e índices complementarios, vistas, triggers, procedimiento, usuarios y DML.

## Orden de ejecución en MySQL / phpMyAdmin
1. `01_create.sql`
2. `02_inserts.sql`
3. `03_queries.sql` (consultas sin modificaciones)
4. `06_views.sql`
5. `07_triggers.sql`
6. `08_store_procedures.sql`
7. `09_users_grants.sql` (requiere permisos de administración)
8. `10_dml.sql` (modifica los datos; ejecutar al final)

Opcionales: `05_indexes.sql` (una sola vez); `04_alterations.sql` es solo un ejemplo comentado.

**Importante:** los scripts son para ejecutarse sobre una base nueva. No volver a ejecutar INSERT sobre la misma base sin reiniciarla. Para volver a empezar, respaldar los datos y recrear la base. Los triggers y el procedimiento se crean después de insertar los datos iniciales, por lo que esos INSERT no generan auditorías retroactivas.

## Prueba del procedimiento
Después de crear triggers y SP, el libro 107 está disponible hasta ejecutar el DML que lo borra. Ejemplo: `CALL SP_REGISTRAR_PRESTAMO('EST006',107,'FUN001',CURDATE());` y luego `SELECT * FROM AUDITORIA_PRESTAMOS;`.

## Observaciones
El modelo se respetó tal como está. Algunas preguntas exigen información que no existe en el diagrama; las limitaciones están detalladas en `doc/requirements.md`. Las contraseñas de ejemplo deben cambiarse.
