--Show transaction date, first 20 characters of transaction description (change the column heading to "trans_desc") and amounts of all 'Credit' transactions done during June, 2010.

alter session set current_schema=bank;
SET heading OFF;
select TRANS_DT , substr(TRANS_DESC ,1,20) as TRANS_DESC ,TRANS_AMT from BANK_TRANSACTION  
where TO_CHAR(TRANS_DT,'Mon-YYYY')='Jun-2010' ;
