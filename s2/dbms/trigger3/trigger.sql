DELIMITER //

CREATE TRIGGER after_update_stdnts
AFTER UPDATE
ON students
FOR EACH ROW
BEGIN

INSERT INTO student_log VALUES(user(),
CONCAT('Updated Student Record', OLD.name, 'Previous Class: ', OLD.class, 'Present Class', NEW.class));

END //

DELIMITER ;

