/*  Table Product : primary key : product_id : let it be left table : table1
    Table Sales   : foreign key : product_id : let it be right table : table2
    
    
    we need values for each sale_id so we need to take every value of column         sale_id from sales table  so we need to take right table values fully
    
    So right join will be used (according to our convention) 
    
    Syntax : SELECT  table1.columns, table2.columns 
             FROM table1 (left)
             RIGHT JOIN 
             TABLE2 (right)
             ON join_condition:
             
    Solution: 
    selcting columns that are desired in output :SELECT S.year , S.price , P.product_name  
left table : FROM Product as P (used alais AS to rename tables to make query simple) 

      ON S.product_id = P.product-id : on condition with common column of primary key and referenced primaary key that is foreign key 

    
    
    
    
    
    
    
    
    
    
              SELECT S.year , S.price , P.product_name 
              FROM Product as P 
              RIGHT JOIN 
              Sales as S 
              ON S.product_id = P.product-id;
              
              
              */
              
              
              
              SELECT S.year , S.price , P.product_name
              FROM Product as P 
              RIGHT JOIN 
              Sales as S 
              ON S.product_id = P.product_id;
          ;    
              
              