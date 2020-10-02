show databases;
use mydb;
show tables;
desc customers;
select * from customers;
desc customers_has_tickets;

-- Using select Query  
-- 1.Order by Clause :
select * from customers order by FirstName;

-- 2. Group by and having :
select * from customers group by FirstName having Gender = 'M' ;

-- 3. Aggregate functions :
	-- 	(i).COUNT :
select COUNT(customer_Id) from customers;
	-- (ii).MIN   :
select MIN(customer_Id),customer_Id from customers;
	-- (iii).MAX  :
select MAX(customer_Id),customer_Id from customers;
	-- (iV).SUM   :
select SUM(Age) as sum_of_ages from customers where Gender<>'F';
	-- (V).AVG    :
select AVG(Age) as avg_of_ages from customers where Gender<>'F';


-- 4. Logical operators especially with LIKE :
select * from customers where Phone like '9%';
-- for others :
select * from customers where (Phone like '9%') or (Email like 's%') and (Age between 19 and 23) ;

-- 5. At least 4 Nested queries specific to your Database, out of which at least 2 should
-- have multiple subquery :
select FirstName as shortList_Candidates,Email,Age
from customers 
where customer_Id in (
   select customer_Id 
   from customers
   where Gender in (
		select Gender 
        from customers
		having (Phone in ( 988 , 785 , 943 , 989 ) or gender='F') and (LastName like 'S%') and (customer_Id between 1 and 30 )
   )
) ;

