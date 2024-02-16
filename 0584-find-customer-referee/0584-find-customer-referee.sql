# Write your MySQL query statement below
#selecting only name because the output as well as question says that find names thats why 
# from table customer 
# refree_id is used because if you read question carefully it doesnt say id it says names of the customer that are not referred by the customer which is refree_id
#NOT IN(values you dont want to include): gives all tupples which doesnt have 2
#but this wont give us expected answer as when NOT IN will check by equating "2" by each value it wont be able to equate NULL with 2 as it would give unknown value so this is why for including NULL add  "OR referee_id IS NULL"
#again we cannot use  "=" with NULL because that is not possible to equate NULL that is why we used IS 
 SELECT name FROM Customer WHERE referee_id NOT IN(2) OR referee_id IS NULL;
