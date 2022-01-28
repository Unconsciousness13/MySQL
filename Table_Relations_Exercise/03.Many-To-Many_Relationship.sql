CREATE TABLE exams (
    `exam_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL
);

INSERT INTO exams
VALUES 
(101, 'Spring MVC'),
(102, 'Neo4j'),
(103, 'Oracle 11g');

CREATE TABLE students (
    `student_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL
);

INSERT INTO students(`name`)
VALUES
	('Mila'),
    ('Toni'),
    ('Ron');

CREATE TABLE students_exams (
    `student_id` INT NOT NULL,
    `exam_id` INT NOT NULL
);

ALTER TABLE students_exams
ADD CONSTRAINT fk_students_students_exams
FOREIGN KEY(student_id)
REFERENCES students(student_id);

ALTER TABLE students_exams
ADD CONSTRAINT fk_student_exams_exams
FOREIGN KEY(exam_id)
REFERENCES exams(exam_id);

INSERT INTO students_exams(`student_id`, `exam_id`)
VALUES 
(1, 101),
(1, 102),
(2, 101),
(3, 103),
(2, 102),
(2, 103);