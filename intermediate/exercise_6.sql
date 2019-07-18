select temp.ID, concat(e.firstName,' ',e.lastName) as 'Employee',
	CASE
		WHEN temp.counter > 0 then CASE
						WHEN temp.counter > 5
						THEN e.salary * .3
						WHEN temp.counter < 6
						THEN e.salary * 0.1
					END
		ELSE 0
	END as 'Bonus'
FROM employees e,
(select e.employeeNumber 'ID',
	COUNT(c.salesRepEmployeeNumber) 'counter'
from employees e
left join customers c
on c.salesRepEmployeeNumber = e.employeeNumber
Where e.jobTitle = 'Sales Rep'
group by e.employeeNumber) temp
WHERE e.employeeNumber = temp.ID
order by Bonus Desc;
