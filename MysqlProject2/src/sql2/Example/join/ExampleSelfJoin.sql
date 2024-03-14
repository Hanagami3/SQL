USE thebelgianbrewerydb;

SELECT b1.name, b2.name
FROM brewers AS b1 INNER JOIN brewers AS b2
ON b1.city = b2.city AND b1.id < b2.id;