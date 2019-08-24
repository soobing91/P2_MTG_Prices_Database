-- Drop tables if they already exist
DROP TABLE cardinfo;
DROP TABLE priceinfo;

-- Creating tables for data to be pushed in
CREATE TABLE cardinfo(
    id SERIAL PRIMARY KEY,
    cardname TEXT,
    convertedmanacost INT,
    text TEXT,
    type TEXT
);

CREATE TABLE priceinfo(
    id SERIAL PRIMARY KEY,
    card TEXT,
    price INT
);

-- Checking whether data are well stored..
SELECT * FROM cardinfo;

SELECT * FROM priceinfo;

SELECT
	cardinfo.cardname,
	cardinfo.type,
	priceinfo.price
FROM
	priceinfo LEFT JOIN cardinfo ON priceinfo.card = cardinfo.cardname;