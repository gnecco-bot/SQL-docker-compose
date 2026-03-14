SELECT 
max(salary) as max_salary, 
min(salary) as min_salary,
avg(salary) as avg_salary,
sum(salary) as sum_salary,
count(salary) as count_salary
FROM users
WHERE first_name = 'carly' ;

SELECT 
u.first_name,
max(u.salary) as max_salary, 
min(u.salary) as min_salary,
avg(u.salary) as avg_salary,
sum(u.salary) as sum_salary,
count(u.id) as total FROM users u
LEFT JOIN profiles p ON p.user_id = u.id
-- WHERE u.id IN (31, 33, 110, 102)
GROUP BY first_name
ORDER BY total DESC;
