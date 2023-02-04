SELECT
    *
FROM
    owners o
    LEFT JOIN vehicles v ON o.id = v.owner_id;

SELECT
    first_name,
    last_name,
    COUNT(owner_id)
FROM
    owners o
    JOIN vehicles v ON o.id = v.owner_id
GROUP BY
    (first_name, last_name)
ORDER BY
    first_name;

SELECT
    first_name,
    last_name,
    CAST(AVG(price) AS INTEGER) AS average_price,
    COUNT(owner_id)
FROM
    owners o
    JOIN vehicles v ON o.id = v.owner_id
WHERE
    average_price > 10000
GROUP BY
    (first_name, last_name)
ORDER BY
    first_name DESC;

id | make | model | year | price | owner_id ----+--------+---------+------+----------+----------
1 | Toyota | Corolla | 2002 | 2999.99 | 1 2 | Honda | Civic | 2012 | 12999.99 | 1 3 | Nissan | Altima | 2016 | 23999.99 | 2 4 | Subaru | Legacy | 2006 | 5999.99 | 2 5 | Ford | F150 | 2012 | 2599.99 | 3 6 | GMC | Yukon | 2016 | 12999.99 | 3 7 | GMC | Yukon | 2014 | 22999.99 | 4 8 | Toyota | Avalon | 2009 | 12999.99 | 4 9 | Toyota | Camry | 2013 | 12999.99 | 4 10 | Honda | Civic | 2001 | 7999.99 | 5 11 | Nissan | Altima | 1999 | 1899.99 | 6 12 | Lexus | ES350 | 1998 | 1599.99 | 6 13 | BMW | 300 | 2012 | 22999.99 | 6 14 | BMW | 700 | 2015 | 52999.99 | 6 id | first_name | last_name ----+------------+-----------
1 | Bob | Hope 2 | Jane | Smith 3 | Melody | Jones 4 | Sarah | Palmer 5 | Alex | Miller 6 | Shana | Smith 7 | Maya | Malarkin