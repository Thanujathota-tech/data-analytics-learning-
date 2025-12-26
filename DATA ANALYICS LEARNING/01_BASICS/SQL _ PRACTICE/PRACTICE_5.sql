use workbook;
CREATE TABLE Class8 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    Academic_year INT,
    student_percentage INT
);

INSERT INTO Class8 (id, name, dob, Academic_year, student_percentage) VALUES
(101, 'Ashwin', '2003-09-05', 2016, 98),
(102, 'Lavanya', '2003-09-05', 2016, 88),
(103, 'Akshitha','2003-06-04', 2017, 94),
(104, 'Madhav','2004-12-23', 2017, 92),
(105, 'Riya', '2003-01-15', 2016, 85),
(106, 'Arjun','2004-03-11', 2018, 90),
(107, 'Neha', '2003-07-19', 2018, 96);

select * from class8;
select name,student_percentage from class8;
select * from class8 where student_percentage>90;
select * from class8 where Academic_year=2016;

select * from class8 order by student_percentage desc;
select * from class8 where student_percentage between 90 and 100;
select * from class8 where name like 'A%';
select * from class8 order by student_percentage desc LIMIT 3;

select Academic_year,count(id) from class8 group by Academic_year;
select Academic_year,count(id),avg(student_percentage) AS avg_percentage from class8 group by Academic_year;
select Academic_year,count(id),max(student_percentage) AS max_percentage from class8 group by Academic_year;

select Academic_year,count(id) from class8 group by Academic_year having avg(student_percentage)>90;
select Academic_year,count(id) from class8 group by Academic_year having count(id)>2;

SELECT 
  Academic_year,
  AVG(student_percentage) AS avg_percentage
FROM class8
WHERE student_percentage > 85
GROUP BY Academic_year
HAVING AVG(student_percentage) > 90
ORDER BY avg_percentage DESC;

SELECT 
  Academic_year,
  AVG(student_percentage) AS avg_percentage
FROM class8
WHERE student_percentage > 85
GROUP BY Academic_year
HAVING AVG(student_percentage) > 90
ORDER BY avg_percentage DESC
LIMIT 2;


commit;

select academic_year,avg(student_percentage) as avg_percentage
from class8
where student_percentage>85
group by academic_year
having avg(student_percentage)>90 
order by avg_percentage desc;















