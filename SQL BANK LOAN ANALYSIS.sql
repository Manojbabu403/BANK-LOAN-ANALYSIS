use project;
select * from finance_2;
select count(*) from finance_2;
select count(*) from finance_1;
-- kpi 1
select year(issue_d) as Year_wise,concat('$',sum(loan_amnt))as Loan_amount from finance_1 group by year_wise order by year_wise;
-- kpi 2
select f.grade,f.sub_grade,concat('$',sum(revol_bal))as revol_bal from finance_1 f left join finance_2 fi using(id) group by grade,sub_grade order by  grade,sub_grade;
-- kpi 3
select f.verification_status,concat('$',round(sum(total_pymnt),0))as total_payment from finance_1 f left join finance_2 fi using(id) where f.verification_status in("verified","not verified") group by f.verification_status;
-- kpi 4
select f.addr_state,last_credit_pull_d,f.loan_status from finance_1 f inner join finance_2 fi using(id) group by f.addr_state,last_credit_pull_d,f.loan_status order by loan_status;
-- kpi4
select addr_state,loan_status from finance_1  group by addr_state,loan_status order by addr_state,loan_status;
-- kpi 5
select month(issue_d)as month_wise,loan_status from finance_1  group by month_wise,loan_status order by month_wise,loan_status;























