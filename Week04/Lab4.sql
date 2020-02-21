--quiz
alter session set current_schema = mennis;

--1
create table EMP as (select ename,eno,edob from pobyrne.emp);

--2
alter table emp add current_project varchar(60);

--4
update emp set current_project = 'Project 1' where eno = 7839;

--5
alter table emp add primary key (eno);

--6
create table holidays (
    startdate date not null,
    numberofdays number(3) not null,
    eno references emp,
    primary key (startdate , eno)
);

--7
insert into holidays (startdate,numberofdays,eno) values (
    '01-FEB-20',
    5,
    7839
);

insert into holidays (startdate,numberofdays,eno) values (
    '21-FEB-20',
    8,
    7369
);

insert into holidays (startdate,numberofdays,eno) values (
    '01-MAY-20',
    20,
    7788
);

insert into holidays (startdate,numberofdays,eno) values (
    '15-DEC-20',
    1,
    7839
);

select * from emp join holidays using (eno);



--worksheet
alter session set current_schema = pobyrne;
select * from m_movies;

--1
select
    count(*) "Number of movies"
from m_movies;

--2
select
    distinct genre "Genres"
from m_movies;

--3
select
    genre "Genre",
    count(*) "Number of movies"
from m_movies
group by genre;

--4
select
    genre "Genre",
    min(running_time) "Minimum",
    max(running_time) "Maximum"
from m_movies
group by genre;

--5
select
    genre "Genre",
    count(*) "Movies between 90 and 180 minutes"
from m_movies
where running_time between 90 and 180
group by genre;

--6
select
    genre "Genre",
    rating "Rating",
    count(*) "Number of movies"
from m_movies
group by genre, rating;

--7
select
    rating "Ratings that average over 66 million"
from m_movies
group by rating
having avg(box_office) > 66;

--part 2
alter session set current_schema = builder2;

--1
select
    corderno,
    order_date,
    customer_name
from corder
join customer using (customer_id);

--2
select
    supplier_name,
    stock_description
from supplier
join stock using (supplier_id);

--3
select distinct
    customer_name,
    stock_description
from customer
join corder using (customer_id)
join corderline using (corderno)
join stock using (stock_code)
order by customer_name;

--4
select
    customer_name,
    count(corderno)
from customer
join corder using (customer_id)
group by customer_name;
