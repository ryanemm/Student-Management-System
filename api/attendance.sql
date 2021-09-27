CREATE TABLE attendance (
  studentId INT REFERENCES student_details (studentId),
  studentName VARCHAR(50),
  date DATE,
  present BOOLEAN
);
