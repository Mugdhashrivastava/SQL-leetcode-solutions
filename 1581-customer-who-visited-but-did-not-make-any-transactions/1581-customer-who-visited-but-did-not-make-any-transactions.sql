/* table1 : Visits : primary key : visit_id: let it be left table
   table2  :Transaaction :  reference key : visit_id : let it be right table
   
   
    To find : columns output according to given format:
              ids of the users : customer_id
              count of customer visit with no transaction: as: count_no_trans (aliasing)
              
              
    Solution: 
  1. SELECT customer_id , COUNT(customer_id) as  count_no_trans FROM visits 
  2. LEFT JOIN Transactions 
      using(visit_id)
      WHERE Transactions.transaction_id is NULL
  3.group by customer_id;
   
  1.selecting desired columns ,counting customer_id : if customer id repeats => that means customer visited again
  
   so that is why number of repeated customer_id = number of visits
   
  2. Joining visits table to transation table (this is we are doing to check which one of the common columns of left and right table is )
   
   Baically,
   right table: transaction table : so there must be some values that lie n both left and right table
   so what we will do is we would join both the tables and remove the parts with right table (righttable.col is NULL)
   
   left table - right table values
   
   visits LEFT JOIN Transactions 
    using(visit_id)                           [common id]
    WHERE Transactions.transaction_id is NULL
   
    
    3. Grouping the same customer_id to use aggregate function like count 
     COUNT(customer_id) as  count_no_trans
     
     and 
     
      group by customer_id
              
    
   */ 
   
   
   
   SELECT customer_id , COUNT(customer_id) as  count_no_trans FROM visits 
   LEFT JOIN Transactions 
   using(visit_id)
   WHERE Transactions.transaction_id is NULL
   group by customer_id;
              