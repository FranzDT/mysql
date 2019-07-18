select concat(city,' office') as 'Name', concat(addressLine1,', ',
	IFNULL(addressLine2,''),', ',
	IFNULL(state,''),', ',
	country,', ',
	postalCode) as 'Address'
FROM offices
UNION ALL
select customerName as 'Name', concat(addressLine1,', ',
	IFNULL(addressLine2,''),', ',
	IFNULL(state,''),', ',
	country,', ',
	IFNULL(postalCode,'')) as 'Address'
from customers;
