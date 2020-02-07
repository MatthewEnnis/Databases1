--quiz

alter session set current_schema = pobyrne;

select mtitle, score from m_movies order by score;

--lab

alter session set current_schema = mennis;

drop table music;
drop table cars;

--exercise 1

create table music (
    genre
        varchar2(20)
        default 'Pop',
    piecename
        varchar2(30)
        NOT NULL,
    songduration
        number(4,2)
        NOT NULL,
    firstplayed
        date
        default SYSDATE,
    dateadded
        date
        default SYSDATE,
    artist
        varchar2(20)
        NOT NULL,
    album
        varchar2(20)
        NOT NULL,
    songcost
        number(3,2)
);

insert into music values (
    'Pop',
    '929',
    2.55,
    '01-FEB-2020',
    '01-JAN-2020',
    'Halsey',
    'Manic',
    1
);

insert into music values (
    'Pop',
    'Growing Pains',
    3.13,
    '02-FEB-2020',
    '01-JAN-2019',
    'Alessia Cara',
    'The Pains of Growing',
    2
);

insert into music (piecename, artist, album, songduration) values (
    'On the Low',
    'Tove Styrke',
    'Sway',
    3.46
);

insert into music (piecename, artist, album, songduration) values (
    'FORMATION',
    'Beyonce',
    'LEMONADE',
    3.26
);

select * from music;

-- exercise 2

create table cars (
    owner
        varchar2(20)
        NOT NULL,
    owneremail
        varchar2(30),
    car
        varchar2(30)
        NOT NULL,
    registration
        varchar2(10)
        unique,
    passengers
        number(1)
        default 5
);

insert into cars values (
    'Ken Delvin',
    'ken@dit.ie',
    'Silver Toyota Lexus',
    '07D11211',
    6
);

insert into cars (owner, owneremail, car, registration) values (
    'Ken Delvin',
    'ken@dit.ie',
    'Volkswagen Golf',
    '00D12831'
);

insert into cars (owner, owneremail, car, registration) values (
    'Ken Delvin',
    'ken@dit.ie',
    'Audi 100',
    '90D10800'
);

insert into cars values (
    'Fred Bloggs',
    'fred@ibm.ie',
    'Brown Ford Escort',
    '80D2002',
    5
);

insert into cars values (
    'Fred Bloggs',
    'fred@ibm.ie',
    'Black Ford Anglia',
    '50D03',
    4
);

commit;

--demonstration

select * from music;
select * from cars;
