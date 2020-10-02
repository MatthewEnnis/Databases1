--place the order for new stock, the stock is then added to the current stock
insert into LL_STOCK_ORDER values (
    '&&stockcode',
    SYSDATE,
    &&quantity
);

insert into LL_CURRENT_STOCK values (
    '&&stockcode',
    &&quantity
);

undefine stockcode;
undefine quantity;

commit;

--add a new customer
insert into LL_CUSTOMERS values (
    customersequence.nextval,
    '&customername',
    '&customeraddress'
);

commit;