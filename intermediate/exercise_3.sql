select concat(e.firstName,' ',e.lastName) as 'Employee Name',
	e.jobTitle as 'Job Title',
	concat(o.addressLine1,' ',
		IFNULL(addressLine2,''),' ',
		IFNULL(state,''),' ',
		country,' ',
		postalCode) as 'Office Address'
from employees e, offices o
where e.officeCode = o.officeCode;
