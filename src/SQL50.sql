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


# Select 4
SELECT DISTINCT 
    author_id as id
FROM
    Views
WHERE
    author_id = viewer_id
ORDER BY 
    author_id ASC

# Select 5
SELECT
    tweet_id
FROM 
    Tweets
Where 
    LENGTH(content) >15
