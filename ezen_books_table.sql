CREATE TABLE test (id NUMBER);

select * from users;

select * from book_review;

select * from books;

---------------------------------------

drop table product;
DROP SEQUENCE product_seq;

create table product (
book_num number not null,
category_code number not null,
 book_title varchar2(100),
book_author varchar2(100),
book_image varchar2(100),
book_price number,
book_publisher varchar2(100),
book_pubdate varchar2(100));

CREATE SEQUENCE product_seq
 START WITH 1 
INCREMENT BY 1;

insert into product ( book_num,category_code,book_title,book_author,book_image,book_price,book_publisher,book_pubdate) values (product_SEQ.nextval,1,'백설공주','홍길동','https://d12zq4w4guyljn.cloudfront.net/300_300_20221101084131_photo1_94ecf3cdea70.jpg',10000,'동화나라','2023-02-13');
insert into product ( book_num,category_code,book_title,book_author,book_image,book_price,book_publisher,book_pubdate) values (product_SEQ.nextval,1,'신데렐라','김범수','https://d12zq4w4guyljn.cloudfront.net/300_300_20221101084057_photo2_94ecf3cdea70.jpg',100000,'동화나라2','2023-02-14');

commit;
select * from product;

-----------------------------------------------

delete from tb_user;

drop table tb_user;
drop sequence tb_user_id_seq;

create table tb_user(
  id number,
  username varchar2(100),
  password varchar2(1000),
  email varchar2(100),
  authRole varchar(100),
  createDate Date
);

create sequence tb_user_id_seq
 start with 1
 increment by 1
 nocache
 nocycle;

insert into tb_user
values(tb_user_id_seq.nextval, 'a1234', 'a1234', 'a1234@daum.net', null, sysdate);
commit;

delete from tb_user
where id = 2;

DESC tb_user;
ALTER TABLE tb_user
MODIFY password varchar2(100);

select * from tb_user;
