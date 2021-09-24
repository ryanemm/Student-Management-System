CREATE TABLE attendance (
  studentId INT REFERENCES student_details (studentId),
  date DATE,
  present BOOLEAN
);
