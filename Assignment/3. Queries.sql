--return the schedule of upcoming appointments for the fitters
select appointment_date "Date", employee_name "Fitter name"
from LL_APPOINTMENT
join LL_EMPLOYEES
on fitter_id = employee_id
where appointment_date > SYSDATE
order by appointment_date;

--return the items that are low in stock that haven't already been reordered in the past month
select distinct stock_code "Code", stock_description "Description", quantity "Quantity", order_date "Most recent order"
from LL_CURRENT_STOCK
join LL_STOCK_ITEMS using (stock_code)
join LL_STOCK_ORDER using (stock_code)
where order_date < SYSDATE - 30
and quantity < 10;

--return the suppliers that none of our current stock is from
select supplier_name "Supplier"
from LL_SUPPLIERS
minus
select supplier_name from LL_CURRENT_STOCK
join LL_STOCK_ITEMS using (stock_code)
join LL_SUPPLIERS using (supplier_id);

--return the appointments designed by a specific employee that cost more than 150
select design_specification "Design", appointment_date "Date", TO_CHAR(total_cost, 'U9,999.99') "Cost"
from LL_APPOINTMENT
join LL_EMPLOYEES on designer_id = employee_id
where employee_name like 'Kendall'
intersect
select design_specification, appointment_date, TO_CHAR(total_cost, 'U9,999.99')
from LL_APPOINTMENT
where total_cost > 150;

--return the total value of all the currently held stock
select TO_CHAR(SUM(price_per_unit*quantity), 'U9,999.99') "Total stock value"
from LL_CURRENT_STOCK
join LL_STOCK_ITEMS
using (stock_code);

--return the members of staff and the customers they've interacted with
select employee_name "Employee", customer_name "Customer"
from LL_CUSTOMERS
join LL_APPOINTMENT using (customer_id)
join LL_EMPLOYEES on designer_id = employee_id
union
select employee_name, customer_name
from LL_CUSTOMERS
join LL_APPOINTMENT using (customer_id)
join LL_EMPLOYEES on fitter_id = employee_id;