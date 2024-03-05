/* Given: table Prices 
   
   tells price of product in particular range of date
   each product has one price only for a period of time
   
   
   Table 'units'
   No primary key in this table since duplicate rows
   
   To find : average selling price as average_price (float data type because decimal of 2 places )  and product_id in result table.
   
   
   
   Solution:
   1. Select product_id to return from prices as shown in output format 
   2. rename prices as p for coonvenience and later rename UnitsSold as u too
   3. use left join as we need whole info of table price to calculate average price 
   4. on condition : the common field product_id
   SELECT p.product_id FROM Prices AS p
   LEFT JOIN
   UnitsSold AS u
   ON p.product_id = u.product_id;
   
   5. to calculate average price[summation of (price * units)] /[summation of units]
   6. round it 2 decimal places 
   7. to avoid errors as if price or unit is null  makesure to use IFNULL and give ouutput 0 for that 
   8. rename as average_price as given in output format
   IFNULL(ROUND((SUM(p.price*(u.units))/SUM(u.units)),2),0) AS average_price 
   
   9.make sure to take out price in given date range only
   ON p.product_id = u.product_id AND
   u.purchase_date BETWEEN p.start_date and p.end_date
   10. group by product_id as there can be many different time periods for same product_id 
   
   SELECT p.product_id ,
IFNULL(ROUND((SUM(p.price*(u.units))/SUM(u.units)),2),0) AS average_price 
FROM Prices AS p
LEFT JOIN
UnitsSold AS u
ON p.product_id = u.product_id
AND
u.purchase_date BETWEEN p.start_date and p.end_date
GROUP BY p.product_id;
   
   
   

   
*/


SELECT p.product_id ,
IFNULL(ROUND((SUM(p.price*(u.units))/SUM(u.units)),2),0) AS average_price 
FROM Prices AS p
LEFT JOIN
UnitsSold AS u
ON p.product_id = u.product_id
AND
u.purchase_date BETWEEN p.start_date and p.end_date
GROUP BY p.product_id;







   
   
             
