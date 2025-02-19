-- You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.
-- Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8.
-- The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically.
-- Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.
-- Write a query to help Eve.

-- Note Print "NULL"  as the name if the grade is less than 8.

SELECT CASE WHEN g.grade<8 THEN NULL
        ELSE s.name end as name,
g.grade, s.marks
FROM Students s
JOIN Grades g ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade desc,name,s.marks;