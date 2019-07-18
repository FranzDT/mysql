CREATE TABLE persons (
	ID INT(11) NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(45),
	last_name VARCHAR(45),
	age INT(2),
	gender ENUM ('M','F'),
	address VARCHAR(45),
	PRIMARY KEY (ID)
);

CREATE INDEX PRIMARY_KEY
ON persons (ID);
