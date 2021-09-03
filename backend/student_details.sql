-- create table for student details
--
DROP table IF EXISTS 'student_details';
CREATE TABLE IF NOT EXISTS 'student_details' (
	'id' int(11) NOT NULL AUTO_INCREMENT, 
	'first_name' varchar(20) NOT NULL,
	'last_name' varchar(20) NOT NULL,
	'adress' varchar(50),
	PRIMARY KEY ('id')	
	);
 
