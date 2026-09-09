-- BASIC OF DATA SCIENCE — Practical 7
-- Oracle SQL*Plus / SQL Command Line

CONNECT system/123;

-- CLEAN START: remove old tables if they already exist
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employee CASCADE CONSTRAINTS PURGE';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE emp CASCADE CONSTRAINTS PURGE';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

CREATE TABLE employee (
    empid INT,
    empname VARCHAR2(20),
    department VARCHAR2(20),
    salary INT
);

INSERT INTO employee VALUES (1, 'dev', 'sales', 30000);
INSERT INTO employee VALUES (2, 'yugi', 'IT', 20000);
INSERT INTO employee VALUES (3, 'harshit', 'hod', 40000);
INSERT INTO employee VALUES (4, 'james', 'hr', 50000);
INSERT INTO employee VALUES (5, 'manthan', 'R&D', 52000);
INSERT INTO employee VALUES (6, 'meet', 'finance', 55000);
INSERT INTO employee VALUES (7, 'anjali', 'marketing', 42000);
INSERT INTO employee VALUES (8, 'anil', 'accounts', 60000);
INSERT INTO employee VALUES (9, 'jimin', 'production', 65000);
INSERT INTO employee VALUES (10, 'hitesh', 'administration', 70000);

SELECT * FROM employee;
RENAME employee TO emp;
SELECT * FROM emp;
ALTER TABLE emp ADD pincode INT;
SELECT * FROM emp;
ALTER TABLE emp RENAME COLUMN empname TO ename;
SELECT * FROM emp;
ALTER TABLE emp ADD city VARCHAR2(30);
ALTER TABLE emp MODIFY city VARCHAR2(10);
SELECT * FROM emp;
