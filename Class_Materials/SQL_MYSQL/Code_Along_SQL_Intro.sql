
use bank;
select  distinct ( account_id), district_id,frequency,date  from bank.account

order by district_id desc;


select district_id,count(account_id) from bank.account group by district_id;


select account_id + 5 AS updated_account_id  from bank.account;


select * from account ;

select *,amount- payments AS updated_payments from bank.loan;

SELECT * FROM bank.loan
WHERE status NOT IN ("B","b") AND amount > 100000;


SELECT distinct A3  FROM bank.district;

select status, avg(amount) AS avg_amount from bank.loan group by status order by avg_amount;

select length("Denny");

SELECT  "world" , "_Hello" AS ‘concat’ FROM bank.loan;


SELECT *,LTRIM(A3) FROM bank.district;


select substring(A3,9,10) AS formatted_A3 from bank.district;


select loan_id,max(payments) as max_p from loan group by loan_id order by max_p desc limit 1