-- review 테이블에 rating column 추가
alter table BOOK_REVIEW add review_rating  number(3);

-- review 테이블에 user_id column 추가
alter table BOOK_REVIEW
    add user_id NUMBER not null; 

-- review 테이블의 user_id를 foreign key로 설정
alter table BOOK_REVIEW
    add constraint "BOOK_REVIEW_USERS_FK"
        foreign key (user_id) references USERS;
        
        -- book_title 크기 변경
alter table BOOKS
    modify BOOK_TITLE VARCHAR2(200);

-- book_author 크기 변경
alter table BOOKS
    modify BOOK_AUTHOR VARCHAR2(100);
    
-- 2023 / 02 /20 권한쪽 수정사항
ALTER TABLE users modify user_role varchar2 (15);
    
    
-- 2023 / 02 / 23 구현과정중 사용이 어려워서 삭제
    DELETE FROM "EZENBOOKS"."BOOK_CATEGORY" WHERE CATEGORY_CODE = 1;
    
    
    
    