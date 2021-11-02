

################################################## Inner Join 

/*SELECT ta.col_n, …., tb.col_m FROM table_a AS ta
INNER JOIN table_b AS tb
ON ta.col_x = tb.col_y */


select * from bank.account as a
inner join bank.loan as l on 
a.account_id = l.account_id;

### another version
select * from bank.account as a
inner join bank.loan as l  
using(account_id);

################################################## Left Join
/*
SELECT ta.col_n, …., tb.col_m FROM table_a AS ta
LEFT JOIN table_b AS tb
ON ta.col_x = tb.col_y

*/
select * from bank.account as a
left join bank.loan as l 
on a.account_id = l.account_id;

################################################# Right Join
/*
SELECT ta.col_n, …., tb.col_m FROM table_a AS ta
RIGHT JOIN table_b AS tb
ON ta.col_x = tb.col_y;
*/

select * from bank.account as a
right join bank.loan as l 
on a.account_id = l.account_id;


################################################## Full outer Join
/*
SELECT ta.col_n, …., t_b.col_m FROM table_a AS ta
LEFT JOIN table_b AS tb
ON ta.col_x = tb.col_y
UNION
SELECT ta.col_n, …., t_b.col_m FROM table_a AS ta
RIGHT  JOIN table_b AS tb
ON ta.col_x = tb.col_y

*/
select * from bank.account as a
left join bank.loan as l 
on a.account_id = l.account_id
union 
select * from bank.account as a
right join bank.loan as l 
on a.account_id = l.account_id;



