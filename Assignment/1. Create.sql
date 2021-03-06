drop table ll_stock_order;
drop table ll_current_stock;
drop table ll_stock_items;
drop table ll_suppliers;
drop table ll_appointment;
drop table ll_customers;
drop table ll_employees;
drop table ll_departments;
drop sequence customersequence;

-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2020-04-18 16:31:17 BST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE ll_appointment (
    customer_id           INTEGER NOT NULL,
    appointment_date      DATE NOT NULL,
    design_specification  VARCHAR2(500),
    designer_id           CHAR(3) NOT NULL,
    fitter_id             CHAR(3) NOT NULL,
    total_cost            INTEGER
);

ALTER TABLE ll_appointment ADD CONSTRAINT ll_appointment_pk PRIMARY KEY ( customer_id,
                                                                          appointment_date );

CREATE TABLE ll_current_stock (
    stock_code  CHAR(4) NOT NULL,
    quantity    INTEGER
);

CREATE TABLE ll_customers (
    customer_id       INTEGER NOT NULL,
    customer_name     VARCHAR2(20),
    customer_address  VARCHAR2(100)
);

ALTER TABLE ll_customers ADD CONSTRAINT ll_customers_pk PRIMARY KEY ( customer_id );

CREATE TABLE ll_departments (
    department_name VARCHAR2(20) NOT NULL
);

ALTER TABLE ll_departments ADD CONSTRAINT ll_categories_pk PRIMARY KEY ( department_name );

CREATE TABLE ll_employees (
    employee_id      CHAR(3) NOT NULL,
    employee_name    VARCHAR2(20),
    department_name  VARCHAR2(20) NOT NULL
);

ALTER TABLE ll_employees ADD CONSTRAINT ll_employees_pk PRIMARY KEY ( employee_id );

CREATE TABLE ll_stock_items (
    stock_code         CHAR(4) NOT NULL,
    stock_description  VARCHAR2(50),
    stock_category     VARCHAR2(20),
    department_name    VARCHAR2(20) NOT NULL,
    supplier_id        CHAR(3) NOT NULL,
    price_per_unit     INTEGER
);

ALTER TABLE ll_stock_items ADD CONSTRAINT ll_stock_items_pk PRIMARY KEY ( stock_code );

CREATE TABLE ll_stock_order (
    stock_code       CHAR(4) NOT NULL,
    order_date       DATE NOT NULL,
    number_of_units  INTEGER
);

ALTER TABLE ll_stock_order ADD CONSTRAINT ll_stock_order_pk PRIMARY KEY ( stock_code,
                                                                          order_date );

CREATE TABLE ll_suppliers (
    supplier_id       CHAR(3) NOT NULL,
    supplier_name     VARCHAR2(25),
    supplier_address  VARCHAR2(100)
);

ALTER TABLE ll_suppliers ADD CONSTRAINT ll_suppliers_pk PRIMARY KEY ( supplier_id );

ALTER TABLE ll_appointment
    ADD CONSTRAINT customer_id FOREIGN KEY ( customer_id )
        REFERENCES ll_customers ( customer_id );

ALTER TABLE ll_employees
    ADD CONSTRAINT department_name FOREIGN KEY ( department_name )
        REFERENCES ll_departments ( department_name );

ALTER TABLE ll_stock_items
    ADD CONSTRAINT department_namev2 FOREIGN KEY ( department_name )
        REFERENCES ll_departments ( department_name );

ALTER TABLE ll_appointment
    ADD CONSTRAINT designer FOREIGN KEY ( designer_id )
        REFERENCES ll_employees ( employee_id );

ALTER TABLE ll_appointment
    ADD CONSTRAINT fitter FOREIGN KEY ( fitter_id )
        REFERENCES ll_employees ( employee_id );

ALTER TABLE ll_current_stock
    ADD CONSTRAINT stock_code FOREIGN KEY ( stock_code )
        REFERENCES ll_stock_items ( stock_code );

ALTER TABLE ll_stock_order
    ADD CONSTRAINT stock_codev1 FOREIGN KEY ( stock_code )
        REFERENCES ll_stock_items ( stock_code );

ALTER TABLE ll_stock_items
    ADD CONSTRAINT supplier_id FOREIGN KEY ( supplier_id )
        REFERENCES ll_suppliers ( supplier_id );

CREATE SEQUENCE customersequence START WITH 1;

-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
