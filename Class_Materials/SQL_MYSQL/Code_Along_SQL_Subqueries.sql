-- step 1: calculate the average
select avg(amount) from bank.loan;

-- step 2 --> pseudo code the main goal of this step ....
/* select * from bank.loan
where amount > "AVERAGE";
*/

-- step 3 ... create the query
select * from bank.loan
where amount > (
  select avg(amount)
  from bank.loan
);

-- step 4 - Prettify the result. Let's find top 10 such customers
select * from bank.loan
where amount > (select avg(amount)
from bank.loan)
order by amount desc
limit 10;


##### Example
## Get for each account, the total amount transferred, destination bank and destination account, which are above 10K
select * from (
  select account_id, bank_to, account_to, round(sum(amount),2) as Total
  from bank.order
  group by account_id, bank_to, account_to
)  as sub1
where Total > 10000;


select account_id, bank_to, account_to, round(sum(amount),2) as Total
  from bank.order
  group by account_id, bank_to, account_to having Total>10000;
  
####### Example
select bank, round(avg(amount),2) as Average from bank.trans where bank not in (""," ")
group by bank having Average >5500;

select bank, Average from (
  select bank, round(avg(amount),2) as Average
  from bank.trans
  where bank not in (""," ")
  group by bank) as sub1
 Where Average > 5500;
 
 
 ############# Example
select * from bank.trans
where k_symbol in (
  select k_symbol as symbol from (
    select avg(amount) as Average, k_symbol
    from bank.order
    where k_symbol <> ' '
    group by k_symbol
    having Average > 3000
    order by Average desc
  ) sub1
);

########## Example
select k_symbol from (
  select avg(amount) as mean, k_symbol
  from bank.order
  where bank_to in (
    select bank
    from (
      select bank, avg(amount) as Average
      from bank.trans
      where bank <> ''
      group by bank
      having Average > 5500
    ) sub1
  )
  and k_symbol <> ' '
  group by k_symbol
  having mean > 2000
) sub;

###### Example
select operation from (
  select operation, round(avg(balance),2) as Avg_balance from bank.trans
  where k_symbol in (
    select k_symbol as symbol from (
		select k_symbol, round(avg(amount),2) as Average from bank.order
		where k_symbol <> ' '
		group by k_symbol
		having Average > 3000
		order by Average desc
    ) sub1
  )
  group by operation
) sub2
order by Avg_balance
limit 1;




