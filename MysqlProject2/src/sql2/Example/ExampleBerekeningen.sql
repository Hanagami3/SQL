USE thebelgianbrewerydb;

SELECT Name,
       Turnover*0.9118 AS omzet_dollar,
       Turnover*116.6 AS omzet_yen
FROM brewers;