# Select 1
SELECT
    product_id
FROM
    Products
WHERE
    low_fats = 'Y' AND recyclable = 'Y'

# Select 2
SELECT
    name
FROM
    Customer
WHERE
    referee_id != 2 OR referee_id IS NULL

# Select 3
SELECT 
    name, population, area
FROM 
    World
WHERE
    area >= 3000000 OR population >= 25000000




