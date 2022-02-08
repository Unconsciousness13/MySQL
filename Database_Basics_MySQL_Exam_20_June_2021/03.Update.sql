UPDATE cars AS c 
SET 
    c.condition = 'C'
WHERE
    c.mileage > 800000
        OR c.mileage LIKE NULL
        OR c.year > 2010
        OR c.make NOT LIKE 'Mercedes-Benz';