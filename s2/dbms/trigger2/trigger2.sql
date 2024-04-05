DELIMITER //
CREATE TRIGGER std_before_update
BEFORE UPDATE ON Std1
FOR EACH ROW
BEGIN
     DECLARE total_marks INT;
     DECLARE per_marks INT;
     DECLARE grade VARCHAR(20);
     SET total_marks = NEW.sub1 + NEW.sub2 + NEW.sub3 + NEW.sub4 + NEW.sub5;
     SET per_marks = total_marks / 5;
     IF per_marks >= 90 THEN
         SET grade = 'EXCELLENT';
     ELSEIF per_marks >= 75 AND per_marks < 90 THEN
         SET grade = 'VERY GOOD';
     ELSEIF per_marks >= 60 AND per_marks < 75 THEN
         SET grade = 'GOOD';
     ELSEIF per_marks >= 40 AND per_marks < 60 THEN
         SET grade = 'AVERAGE';
     ELSE
         SET grade = 'NOT PROMOTED';
     END IF;
     SET NEW.total = total_marks;
     SET NEW.per_marks = per_marks;
     SET NEW.grade = grade;
END;
//
DELIMITER ;

