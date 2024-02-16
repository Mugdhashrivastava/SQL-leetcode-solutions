# Write your MySQL query statement below
/*Given : no primary key
          duplicate rows possible 
          if author_id = viewer_id that means author and viewer are the same person
          i.e author is the viewer and viewer is the author
          
To find : 1.ALL the author who viewed their article  AT LEAST ONCE : seeing the sample aout put and statement we see they need distinct authors : so DISTINCT query
condition for author to be viewer is  author_id = viewer_id
          2. result should be in ascending order of id field: ORDER BY id ASC / order by ID ; (by default it does ascending order only)
         3. Says return the table id : So  SELECT id FROM Views;
         4. We see id is not present in our parent table so we redeclaser author_id As id

*/

SELECT  DISTINCT author_id  AS id FROM Views 
where  author_id = viewer_id 
ORDER BY id ASC;
