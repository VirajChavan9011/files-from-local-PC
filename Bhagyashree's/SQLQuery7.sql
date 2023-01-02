use sales
select*from orders 
alter table orders add product_name varchar(15)
update orders set product_name =iif(orders_id=70001,'pencil',iif(orders_id=70002,'notebook',null))
update orders set product_name = case when orders_id=70003 then 'pen' when orders_id=70004 then 'notebook' else 'gun' end
update orders set product_name='pen' where orders_id=70003
update orders set product_name='notebook' where orders_id=70004
update orders set product_name='pencil' where orders_id=70005
update orders set product_name='notebook' where orders_id=70006

select*from orders where purchase_amt > 150 and (product_name='notebook'or product_name='pencil')
select*from orders where not orders_id=70003
select top 4* from orders
