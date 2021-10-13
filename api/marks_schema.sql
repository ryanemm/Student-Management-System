DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`subject_id` INT REFERENCES subjects(id),
	`assignment_id` INT NOT NULL,
	`student_id` INT(11) NOT NULL REFERENCES students(id),
	`value` FLOAT NOT NULL,
	PRIMARY KEY (`id`),
);
	
