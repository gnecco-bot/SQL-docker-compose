-- Configura um salário aleatório para users
update users set salary = round(rand() * 10000, 2);

SELECT first_name, salary from users where salary BETWEEN 1000 and 1500
ORDER BY salary ASC;
