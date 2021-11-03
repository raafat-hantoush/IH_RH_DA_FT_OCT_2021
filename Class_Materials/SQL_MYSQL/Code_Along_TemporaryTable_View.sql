

create temporary table  bank.loan_and_account 
select l.loan_id,l.account_id, a.district_id, l.amount,l.payments,a.frequency
from bank.loan l inner join bank.account a 
using (account_id);

select * from bank.loan_and_account;


create temporary table bank.amounts_transfered_per_account_destination_bank
  select account_id, bank_to, account_to, round(sum(amount),2) as Total
  from bank.order
  group by account_id, bank_to, account_to;

select * from bank.amounts_transfered_per_account_destination_bank
where Total > 10000;


### Views 
create view bank.view_amounts_transfered_per_account_destination_bank AS 
  select account_id, bank_to, account_to, round(sum(amount),2) as Total
  from bank.order
  group by account_id, bank_to, account_to;


select * from bank.view_amounts_transfered_per_account_destination_bank
where Total > 10000;