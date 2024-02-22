/*Given : table Teacher with teacher_id field,
          subject_id and dept_id both as primary key (unique and not null)
To Find: number of unique subjects EACH teacher teaches in the university

Solution:

1.number of subjects : COUNT : COUNT(subject_id) 
2.Unique subjects: DISTINCT : DISTINCT subject_id
3.number of unique subjects:COUNT(DISTNICT subject_id)
4.as cnt the column name [cnt given in the output format]:COUNT(DISTNICT subject_id) as cnt


EACH teacher 
Now that we have found the count of distinct subjects ,we need to group it by teacher so the rows of same teacher_id gets grouped by because we need to find it for EACH teacher separately 
right now we have found cnt but we need to map it with respect to something so we are doing it according to each teacher otherwise cnt would give error because we dont know with whose respect it is 

SELECT teacher_id FROM teacher GROUP BY teacher_id;  = groups all similar teacher and gives distinct teacher column  


Amalgamation of both:SELECT teacher_id, count(DISTINCT subject_id) AS cnt FROM teacher
GROUP BY teacher_id ;
 


*/



SELECT teacher_id, count(DISTINCT subject_id) AS cnt FROM teacher
GROUP BY teacher_id ;
 