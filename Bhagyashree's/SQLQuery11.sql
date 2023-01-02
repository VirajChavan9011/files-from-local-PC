use sales 
create table cust_info1(oder_no int,purcahse_amt int,order_date date,customer_id int,salesman_id int)
select*from cust_info1
insert into cust_info1 values(70001,150,'2012-10-05',3005,5002),
                             (70009,270,'2012-09-10',3001,5005),
                             (70002,6500,'2012-10-05',3002,5001),
                             (70004,110,'2012-08-17',3009,5003),
                             (70007,948,'2012-09-10',3005,5002),
                             (70005,2400,'2012-07-27',3007,5001),
                             (70008,5760,'2012-09-10',3002,5001),
                             (70010,1983,'2012-10-10',3004,5006),
                             (70003,2488,'2012-10-10',3009,5003),
                             (70013,3045,'2012-04-25',3002,5001),
                             (70012,255,'2012-06-27',3008,5002)

Select max(purcahse_amt)as max_purcahse_amt,customer_id,order_date from cust_info1
group by customer_id ,order_date having max(purcahse_amt) between 2000and 6000

select max(purcahse_amt)as max_purcahse_amt,customer_id,order_date from cust_info1 
group by order_date,customer_id having max( purcahse_amt )>2000

select max(purcahse_amt)as max_purcahse_amt,customer_id,order_date from cust_info1 
group by order_date,customer_id having max (purcahse_amt)in(5760,2000,3000,6000)

select min(purcahse_amt)as min_purcahse_amt,customer_id from cust_info1
group by customer_id having customer_id between 3002 and 3007
