select e.employeeNumber 'Emp #',concat(e.firstName,' ',e.lastName)'Emp_Name',
	COUNT(c.salesRepEmployeeNumber) 'Customer_count'
from employees e
left join customers c
on c.salesRepEmployeeNumber = e.employeeNumber
Where e.jobTitle = 'Sales Rep'
group by e.employeeNumber
order by Customer_count desc,Emp_Name ASC ;
