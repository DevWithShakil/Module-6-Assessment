
-- Q1: Find 3rd lowest salary from employee table

SELECT DISTINCT salary
FROM employee
ORDER BY salary ASC
OFFSET 2 LIMIT 1;


-- Q2: Find 2nd lowest salary using subquery

SELECT MIN(salary) AS second_lowest_salary
FROM employee
WHERE salary > (SELECT MIN(salary) FROM employee);


-- Q3: Average pending balance (active accounts only, < 4300)

SELECT open_branch_id,
       AVG(pending_balance) AS avg_pending_balance
FROM account
WHERE is_active = TRUE
GROUP BY open_branch_id
HAVING AVG(pending_balance) < 4300;


-- Q4: Pagination query (Page 2, 3 rows per page)

SELECT *
FROM employee
ORDER BY emp_id
LIMIT 3 OFFSET 3;


-- Q5: Count total number of branches
SELECT COUNT(DISTINCT open_branch_id) AS total_branches
FROM account;

