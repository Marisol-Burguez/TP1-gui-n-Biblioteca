USE Biblioteca;
DELIMITER $$
CREATE PROCEDURE SP_REGISTRAR_PRESTAMO(IN p_RUT_EST VARCHAR(20),IN p_COD_LIBRO INT,IN p_RUT_FUNC VARCHAR(20),IN p_FECHA_P DATE)
BEGIN
 -- FECHA_E representa la entrega; se deja NULL hasta que se devuelva.
 -- En este esquema la PK compuesta impide repetir la misma terna estudiante/funcionario/libro.
 IF EXISTS(SELECT 1 FROM PRESTAMO WHERE COD_LIBRO=p_COD_LIBRO AND FECHA_E IS NULL) THEN
   SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Error: el libro ya se encuentra prestado';
 ELSE
   INSERT INTO PRESTAMO(RUT_EST,RUT_FUNC,COD_LIBRO,FECHA_P,FECHA_E) VALUES(p_RUT_EST,p_RUT_FUNC,p_COD_LIBRO,p_FECHA_P,NULL);
   SELECT 'Préstamo registrado correctamente' AS MENSAJE;
 END IF;
END$$
DELIMITER ;
