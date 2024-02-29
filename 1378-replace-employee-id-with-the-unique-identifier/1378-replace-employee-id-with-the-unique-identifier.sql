/* Give : table1 = Employees 
                   fileds/col  = id,name 
                   id = primary key
                   
          table2 = EmployeeUNI
                   field/col = id,unique
                   id = foreign key , can be used as reference
                   
          To find : map EVERY user and show its unique id
                    if unique id is absent show NULL
                    That means prensence of EACH/EVERY user is necessary even  if they dont have unique id we need too show user/employee and show NULL as unique_id
                    
                    
         Solution : we need to take all values of table1 = Employee since we need EACH user
                    we need to take common rows of table2= EmployeeUNI to find the unique id of table1 if it exist on table2
                     
                    table1+table2 common = LEFT OUTER JOIN 
                    Syntax : Select columns from table1
                             LEFT JOIN
                             table2
                             ON 
                             join_condition
                             
        Solution query : SELECT Employees.name , EmployeeUNI.unique_id             (select desired output rows)
                         FROM Employees 
                         LEFT JOIN 
                         EmployeeUNI 
                         ON 
                         Employees.id = EmployeeUNI.unique_id;
                         (id the common column is primary key of parent table)
                         
*/


SELECT Employees.name , EmployeeUNI.unique_id
                         FROM Employees 
                         LEFT JOIN 
                         EmployeeUNI 
                         ON 
                         Employees.id = EmployeeUNI.id;

