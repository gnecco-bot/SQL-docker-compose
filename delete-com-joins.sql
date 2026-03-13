-- Deleta registros com joins
SELECT u.first_name, p.bio FROM users u
LEFT JOIN profiles p ON p.user_id = u.id
WHERE u.first_name = 'katelyn';

DELETE p FROM users u
JOIN profiles AS p ON p.user_id = u.id
WHERE u.first_name = 'katelyn';
