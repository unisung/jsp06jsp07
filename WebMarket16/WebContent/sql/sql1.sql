select * from product;
update product set p_condition='New';

select concat('P',cast(substr(max(p_id),2) as unsigned)+1) from product;

select distinct p_category from product;

