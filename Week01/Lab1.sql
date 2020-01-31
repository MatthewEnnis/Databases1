alter session set current_schema = builder2;

describe BUILDER2.stock;

select stock_code,
stock_description,
unit_price,
unitcostprice
from BUILDER2.stock;

select stock_code,
stock_description,
to_char(unit_price,'U9,999.99'),
to_char(unitcostprice,'U9,999.99')
from BUILDER2.stock;

select stock_code "Stock Code",
stock_description "Description",
to_char(unit_price,'U9,999.99') "Unit Price",
to_char(unitcostprice,'U9,999.99') "Unit Cost Price"
from BUILDER2.stock;

select stock_code "Stock Code",
stock_description "Description",
to_char(unit_price,'U9,999.99') "Unit Price",
to_char(unitcostprice,'U9,999.99') "Unit Cost Price",
to_char(unit_price-unitcostprice,'U9,999.99') "Profit"
from BUILDER2.stock;

select stock_code "Stock Code",
stock_description "Description",
to_char(unit_price,'U9,999.99') "Unit Price",
to_char(unitcostprice,'U9,999.99') "Unit Cost Price",
to_char(unit_price-unitcostprice,'U9,999.99') "Profit"
from BUILDER2.stock
order by (unit_price - unitcostprice);

select 'The stock item '||stock_code||' is a '||stock_description from BUILDER2.stock;

alter session set current_schema = POBYRNE;

describe pobyrne.m_movies;

select * from pobyrne.m_movies;

commit;
