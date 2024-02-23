/* Given: table Cinema 
          id  = primary key 
          other fields are : movie,description, rating 
          rating : float = 2 decimal places= like 3.55 = range[0,10]
          
To find : movies with odd ids
          and description without boring
          ordered table : descending  
          
Solution : since conditions are given we will use whre clause and we can see output fields are same as inut field so we wont select particular fields but all . Therefore

            SELECT * FROM Cinema
            where xyz_conditions;
            
Conditions : movies with odd ids :id%2=1
           description without boring: description != 'boring'


            SELECT * FROM Cinema 
            where id%2=1 AND description != 'boring'

Order by rating desc :


        SELECT * FROM Cinema 
        where id%2=1 AND description != 'boring'
        ORDER BY rating DESC;    
      
            
          
          

*/

SELECT * FROM Cinema 
where id%2=1 AND description != 'boring'
ORDER BY rating DESC;