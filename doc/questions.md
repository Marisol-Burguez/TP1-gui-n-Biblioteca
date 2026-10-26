# Sección 8 — Respuestas teóricas

**1. ¿Por qué PRESTAMO tiene una clave primaria compuesta?** El diagrama marca RUT_EST, RUT_FUNC y COD_LIBRO como PK y FK. La combinación de los tres identifica cada fila. No permite dos préstamos con exactamente los mismos tres valores, aunque cambie FECHA_P. En una biblioteca real, un mismo estudiante puede pedir el mismo libro varias veces en fechas diferentes; para representarlo correctamente sería preferible un ID_PRESTAMO único o incluir un identificador temporal adecuado en la clave. El modelo entregado no lo resuelve por completo.

**2. ¿Qué pasa si borramos una CARRERA con estudiantes asociados?** La clave foránea ESTUDIANTES.ID_CARRERA debe impedir el borrado mientras haya estudiantes relacionados (comportamiento restrictivo predeterminado). Así no quedan estudiantes apuntando a una carrera inexistente. Primero habría que reasignarlos o tratar los registros relacionados según una regla de negocio.

**3. ¿Por qué AUTORES es una tabla separada?** Porque un autor puede escribir varios libros. Separarla evita repetir nombres y apellidos en cada libro, reduce inconsistencias y permite mantener los datos del autor en un único lugar. LIBROS.RUT_AUTOR es la clave foránea.

**4. Relación entre CAMPUS y CIUDAD.** En el modelo, cada CAMPUS tiene una sola CIUDAD mediante ID_CIUDAD, mientras que una CIUDAD puede tener varios CAMPUS. Por lo tanto, CIUDAD (1) a CAMPUS (N).
