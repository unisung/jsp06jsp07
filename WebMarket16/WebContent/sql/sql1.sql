select * from product;
update product set p_condition='New';

select concat('P',cast(substr(max(p_id),2) as unsigned)+1) from product;

select distinct p_category from product;

/* 카테고리 테이블 생성*/
create table category(
seq int not null auto_increment,
categoryName varchar(20) not null,
description varchar(30),
primary key(seq)
);
delete from category;
select * from category;
/* 카테고리 테이블에 데이타 입력*/
insert into category(categoryName,description) values('Smart Phone','Smart Phone');
insert into category(categoryName,description) values('Notebook','Notebook');
insert into category(categoryName,description) values('Tablet','Tablet');

select categoryName from category order by seq;


