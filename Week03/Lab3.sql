--quiz

alter session set current_schema = mennis;

create table homework (
    setdate
        date
        not null,
    subject
        varchar(15)
        not null,
    hwdescription
        varchar(50)
        not null,
    duedate
        date,
    primary key
        (subject, setdate)
);

insert into homework values (
    '06-FEB-2017',
    'Mathematics',
    'P24 Maths Magic',
    '08-FEB-2017'
);

insert into homework (setdate,subject,hwdescription) values (
    '05-FEB-2017',
    'English',
    'Write neatly'
);

select * from homework;

--worksheet
 --1
describe pobyrne.h_hotel;

--2
alter session set current_schema = mennis;

create table my_hotel as (select * from pobyrne.h_hotel);

--3
select * from my_hotel;

--4
alter table my_hotel
add nightly_fee
    number(6);

--5
update my_hotel
set nightly_fee = 150
where hotel_no > 400;

--6
alter table my_hotel
add constraint pk_hotel_no primary key (hotel_no);

--7&8
create table my_booking (
    bookcode
        number(8)
        primary key,
    startdate
        date
        not null,
    enddate
        date
        not null,
    hotel_no
        number(6)
        not null
        references my_hotel
);

--9
insert into my_booking values
(11111111,'1/JAN/2020','5/JAN/2020',300);

insert into my_booking values
(22222222,'1/JAN/2019','5/JAN/2019',301);

insert into my_booking values
(33333333,'1/JAN/2018','5/JAN/2018',302);

insert into my_booking values
(44444444,'1/JAN/2017','5/JAN/2017',400);

-10
commit;

select * from my_booking;
