select concat(city,' office') as 'Name', concat_ws(', ',addressLine1,
	addressLine2,
	state,
	country,
	postalCode) as 'Address'
FROM offices
UNION ALL
select customerName as 'Name', concat_ws(', ',addressLine1,
	addressLine2,
	state,
	country,
	postalCode) as 'Address'
from customers;
