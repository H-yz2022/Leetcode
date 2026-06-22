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
    
# Basic Joins 1 1378. Replace Employee ID With The Unique Identifier
SELECT 
    U.unique_id, E.name
FROM 
    Employees AS E
LEFT JOIN 
    EmployeeUNI AS U
ON 
    U.id=E.id

# Basic Joins 2 1068. Product Sales Analysis I
SELECT 
    P.product_name, S.year, S.price
FROM 
    Sales AS S
LEFT JOIN 
    Product AS P
ON 
    S.product_id=P.product_id

# Basic Joins 3 1581. Customer Who Visited but Did Not Make Any Transactions
SELECT 
    v.customer_id, 
    COUNT(v.visit_id) AS count_no_trans
FROM 
    Visits AS v
LEFT JOIN 
    Transactions AS t
ON 
    v.visit_id=t.visit_id 
WHERE 
    t.transaction_id IS NULL
Group BY 
    v.customer_id;

# Basic Joins 4 197. Rising Temperature
SELECT 
    t.id
From 
    Weather y
Cross JOIN 
    Weather t 
    WHERE DATEDIFF(t.recordDate,y.recordDate) = 1 AND t.temperature > y.temperature

# Basic Joins 5 1661. Average Time of Process per Machine

SELECT 
    a1.machine_id, 
    round(avg(a2.timestamp-a1.timestamp), 3) as processing_time 
FROM 
    Activity a1
JOIN 
    Activity a2 
ON 
    a1.machine_id=a2.machine_id and a1.
    
# Basic Joins 6 577. Employee Bonus
SELECT 
    Employee.name,
    Bonus.bonus 
FROM 
    Employee 
LEFT JOIN 
    Bonus 
ON 
    Employee.empID = Bonus.empID
WHERE  
    bonus < 1000 OR Bonus IS NULL ;

# Basic Joins 7 1280. Students and Examinations

SELECT
    S.student_id,
    S.student_name,
    SU.subject_name,
    COUNT(E.student_id) attended_exams
FROM 
    Students S
CROSS JOIN 
    Subjects SU
LEFT JOIN 
    Examinations E
ON S.student_id = E.student_id
    AND SU.subject_name = E.subject_name

GROUP BY 
    S.student_id, S.student_name, SU.subject_name
ORDER BY 
    S.student_id, S.student_name, SU.subject_name
;

# Basic Joins 8



# Basic Joins 9


# Basic Joins 10







