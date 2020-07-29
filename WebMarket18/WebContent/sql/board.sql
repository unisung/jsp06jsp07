/* board테이블 생성*/
create table board(
num int not null auto_increment,
id varchar(20) not null,
name varchar(20) not null,
subject varchar(100) not null,
content text not null,
regist_day varchar(30),
hit int,
ip varchar(30),
primary key(num)
)default charset=utf8;

/* 테이블 내용 조회*/
select * from board;
/* 테이블 구조확인*/
desc board;
/* 테이블 삭제 */
drop table board;