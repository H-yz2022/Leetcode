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

# Basic Joins 8 570. Managers with at Least 5 Direct Reports
SELECT 
    E1.name
FROM 
    Employee E1
JOIN (
    SELECT 
        managerId,
        COUNT(*) AS directReports
    FROM 
        Employee
    GROUP BY 
        managerId
    HAVING COUNT(*) >= 5
) E2 ON E1.id = E2.managerId;

SELECT 
    e.name
FROM 
    Employee AS e 
INNER JOIN 
    Employee AS m ON e.id=m.managerId 
GROUP BY 
    m.managerId 
HAVING COUNT(m.managerId) >= 5

# Basic Joins 9 1934. Confirmation Rate
SELECT
    s.user_id,
    ROUND(
        AVG(
            IF(c.action = 'confirmed', 1.00, 0)
        ), 
        2
    ) confirmation_rate
FROM
    Signups s
LEFT JOIN
    Confirmations c
    ON
    s.user_id = c.user_id
GROUP BY
    s.user_id


# Basic Aggregate Functions 1
    
# Basic Aggregate Functions 2

# Basic Aggregate Functions 3

# Basic Aggregate Functions 4

# Basic Aggregate Functions 5 1211. Queries Quality and Percentage

# Basic Aggregate Functions 6  1193. Monthly Transactions I
SELECT 
    LEFT(trans_date, 7) AS month,
    country, 
    COUNT(id) AS trans_count,
    SUM(state = 'approved') AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM((state = 'approved') * amount) AS approved_total_amount
FROM 
    Transactions
GROUP BY 
    month, country;

# Basic Aggregate Functions 7 1174. Immediate Food Delivery II
SELECT
    round(avg(order_date = customer_pref_delivery_date)*100, 2) as immediate_percentage
FROM 
    Delivery
WHERE 
    (customer_id, order_date) IN (
  SELECT 
    customer_id, min(order_date) 
  FROM 
    Delivery
  GROUP BY 
    customer_id
);

# Basic Aggregate Functions 8 550. Game Play Analysis IV
# Write your MySQL query statement below
SELECT
    ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM
    Activity
WHERE
    (player_id, DATE_SUB(event_date, INTERVAL 1 DAY))
  IN (
    SELECT 
        player_id, 
        MIN(event_date) AS first_login FROM Activity GROUP BY player_id
  )






