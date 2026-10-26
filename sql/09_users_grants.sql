-- Ejecutar con usuario administrador MySQL.
-- Cambiar contraseñas de ejemplo antes de uso real.

CREATE USER IF NOT EXISTS 'bibliotecario_user'@'localhost'
IDENTIFIED BY 'Cambiar_Esta_Clave_Biblio_2026!';

GRANT SELECT ON Biblioteca.LIBROS
TO 'bibliotecario_user'@'localhost';

GRANT SELECT ON Biblioteca.AUTORES
TO 'bibliotecario_user'@'localhost';

GRANT SELECT ON Biblioteca.EDITORIALES
TO 'bibliotecario_user'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON Biblioteca.PRESTAMO
TO 'bibliotecario_user'@'localhost';

CREATE USER IF NOT EXISTS 'admin_user'@'localhost'
IDENTIFIED BY 'Cambiar_Esta_Clave_Admin_2026!';

GRANT ALL PRIVILEGES ON Biblioteca.*
TO 'admin_user'@'localhost';

REVOKE DELETE ON Biblioteca.PRESTAMO
FROM 'bibliotecario_user'@'localhost';
