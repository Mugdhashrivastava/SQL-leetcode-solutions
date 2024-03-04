/* Given: weather table :
          primary key : id 
          
   Result needed according to given format : all the ids with higher temperature than previous date
   
   
   
 Solution: since we need to compare the entities of itself to itself (compare temperatures as well as the dates from previous date) we will join the weather table to itself as w1 and w2 to  differentiate the two
  
  SELF JOIN : done using inner join 
  Syntax: Select columns from table as t1
          INNER JOIN table as t2
          ON condition(common col);
          
 solution: SELECT id FROM weather as w1
           INNER JOIN weather as w2
           ON DATEDIFF(w1.recordDate,w2.recordDate)=1 
           WHERE w1.temperature > w2.temperature;
           
             
  
  
   
   */
   
   
SELECT w1.id FROM Weather as w1
           INNER JOIN Weather as w2
           ON DATEDIFF(w1.recordDate,w2.recordDate)=1 
           WHERE (w1.temperature > w2.temperature);

