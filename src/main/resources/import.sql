-- Demonstration imports into three tables for book, people, and loans.


-- Hibernate:create table person (id bigint generated by default as identity, email_address varchar(255), first_name varchar(255), last_name varchar(255), phone_number varchar(255), primary key (id))

insert into PERSON (ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS) values ('1', 'Hamish', 'McBeth', '0412123123', 'hamish@roundhouse.art');
insert into PERSON (ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS) values ('2', 'Fred', 'Genome', '0412123123', 'fred@roundhouse.art');
insert into PERSON (ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS) values ('3', 'Meredith', 'Genome', '0412123654', 'mgen@roundhouse.art');


-- Hibernate: create table book (id bigint generated by default as identity, author varchar(255), isbn varchar(255), title varchar(255), primary key (id))

insert into BOOK (ID, TITLE, ISBN, AUTHOR) values ('1', 'The Particular Sadness of Lemon Cake', '9780385533225', 'Aimee Bender');
insert into BOOK (ID, TITLE, ISBN, AUTHOR) values ('2', 'Katie, the windmill cat', '9780763620899', 'Gretchen Woelfle');
insert into BOOK (ID, TITLE, ISBN, AUTHOR) values ('3', 'Lechuzas', '0865931984', 'Lynn M. Stone');
insert into BOOK (ID, TITLE, ISBN, AUTHOR) values ('4', 'Bicycle The History', '0300120478', 'David V. Herlihy');
insert into BOOK (ID, TITLE, ISBN, AUTHOR) values ('5', 'Gourd Pyrography', '9781402745027', 'Jim Widess');


-- Hibernate: create table book_loan (id bigint generated by default as identity, due_date timestamp, issue_date timestamp, returned_date timestamp, book_id bigint, person_id bigint, primary key (id))

insert into BOOK_LOAN (ID, DUE_DATE, ISSUE_DATE, RETURNED_DATE, BOOK_ID, PERSON_ID) values ('1', TIMESTAMP '2017-12-31 12:00:00', TIMESTAMP '2017-12-03 12:00:00', null, 1, 1);
insert into BOOK_LOAN (ID, DUE_DATE, ISSUE_DATE, RETURNED_DATE, BOOK_ID, PERSON_ID) values ('2', TIMESTAMP '2017-12-31 12:00:00', TIMESTAMP '2017-12-03 12:00:00', null, 5, 1);

insert into BOOK_LOAN (ID, DUE_DATE, ISSUE_DATE, RETURNED_DATE, BOOK_ID, PERSON_ID) values ('3', TIMESTAMP '2017-12-31 12:00:00', TIMESTAMP '2017-12-03 12:00:00', null, 2, 2);
