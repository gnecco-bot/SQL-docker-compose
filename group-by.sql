SELECT first_name, COUNT(id) as total FROM users
GROUP BY first_name
ORDER BY total DESC;

SELECT u.first_name, COUNT(u.id) as total FROM users u
LEFT JOIN profiles p ON p.user_id = u.id
WHERE u.id IN (31, 33, 110, 102)
GROUP BY first_name
ORDER BY total DESC;
