select e.employeeNumber 'ID', concat(e.firstName,' ',e.lastName) as 'Employee',
	CASE
		WHEN count(c.salesRepEmployeeNumber) > 0 then CASE
						WHEN count(c.salesRepEmployeeNumber) > 5
						THEN e.salary * .3
						WHEN count(c.salesRepEmployeeNumber) < 6
						THEN e.salary * 0.1
					END
		ELSE 0
	END as 'Bonus'
FROM employees e
left join customers c
on c.salesRepEmployeeNumber = e.employeeNumber
Where e.jobTitle = 'Sales Rep'
group by e.employeeNumber
order by Bonus Desc;
