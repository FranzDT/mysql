SELECT e.lastName as 'Last Name', e.firstName as 'First Name'
FROM employees e, offices o
WHERE e.officeCode = o.officeCode AND
officeCode = o.country='UK' OR 
officeCode = o.country='Japan';
