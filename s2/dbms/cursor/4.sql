DELIMITER //
CREATE PROCEDURE calculate_av_salary()
BEGIN
	DECLARE cur_salary INT;
	DECLARE total_salary INTEGER DEFAULT 0;
	DECLARE num_rows INTEGER DEFAULT 0;
	DECLARE avg_salary INTEGER DEFAULT 0;
	DECLARE done BOOLEAN DEFAULT FALSE;
	DECLARE salary_cursor CURSOR FOR SELECT salary FROM employee;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE;
	
	OPEN salary_cursor;
	
	fetch_loop: LOOP
		
		FETCH salary_cursor INTO cur_salary;
		
		IF done THEN
		
			LEAVE fetch_loop;
		END IF;
	
		IF cur_salary IS NOT NULL THEN
		
			SET total_salary = total_salary + cur_salary;
			SET num_rows = num_rows + 1;
		END IF;
	END LOOP fetch_loop;

	CLOSE salary_cursor;

	IF num_rows > 0 THEN
		
		SET avg_salary=total_salary/num_rows;
	END IF;

	SELECT avg_salary;
END //
DELIMITER ;
