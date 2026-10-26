# Descripción y requerimientos del modelo

## Contexto
Base de datos de una biblioteca académica. Administra ciudades, campus, carreras, estudiantes, funcionarios, autores, editoriales, tipos de libros, bibliotecas, libros y préstamos.

## Relaciones directas e inversas
- CIUDAD 1:N CAMPUS; cada campus pertenece a una ciudad.
- CAMPUS 1:N CARRERAS y 1:N FUNCIONARIOS; cada carrera y funcionario se vincula con un campus.
- CARRERAS 1:N ESTUDIANTES; cada estudiante cursa una carrera.
- AUTORES, EDITORIALES, TIPO y BIBLIOTECA 1:N LIBROS; cada libro tiene un autor, editorial, tipo y biblioteca.
- ESTUDIANTES, FUNCIONARIOS y LIBROS 1:N PRESTAMO; cada préstamo refiere a uno de cada entidad.

## Requerimientos funcionales deducidos
- Registrar entidades maestras y préstamos, consultarlos, actualizarlos y eliminarlos respetando claves foráneas.
- Consultar libros por autor, editorial, tipo, biblioteca y año.
- Consultar préstamos, estudiantes y funcionarios; elaborar totales y promedios.
- Crear vistas de préstamos y de inventario por biblioteca.
- Auditar inserciones de préstamos y rechazar edades inferiores a 17.
- Registrar préstamos mediante procedimiento almacenado y administrar privilegios por usuario.

## Requerimientos no funcionales deducidos
- Integridad referencial con PK y FK; datos consistentes y campos obligatorios.
- Acceso limitado según rol; índices en columnas consultadas con frecuencia.
- Scripts ordenados, reproducibles y documentados para MySQL 8.

## Límites y ambigüedades del diagrama
- No existe una relación directa BIBLIOTECA-CIUDAD: la vista de bibliotecas no puede mostrar ciudad sin ampliar el modelo.
- ESTUDIANTES no guarda ciudad de residencia; la consulta 15 usa la ciudad del campus donde cursa.
- La PK de PRESTAMO (RUT_EST,RUT_FUNC,COD_LIBRO) impide repetir exactamente esa combinación en otro momento. Una solución productiva debería usar ID_PRESTAMO.
- FECHA_E se interpreta como fecha de entrega/devolución, no fecha prevista.
- El enunciado pide validar edades inferiores a 17, aunque el ejemplo de mensaje habla de mayoría de edad; se aplica literalmente el umbral de 17.
- El diagrama no incluye un atributo explícito para el domicilio de una biblioteca.
