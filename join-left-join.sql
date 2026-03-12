SELECT u.id as uid, p.id as pid, p.bio, u.first_name
FROM users as u
LEFT JOIN profiles p
ON u.id = p.user_id;