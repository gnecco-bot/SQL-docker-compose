-- 1) Insira 5 usuários
INSERT INTO users (
    first_name,
    last_name,
    email,
    password_hash
)
VALUES (
	'TESTE 1',
	'LAST_TESTE 1',
	'teste1@.com',
	'teste1'
),
(
	'TESTE 2',
	'LAST_TESTE 2',
	'teste2@.com',
	'teste2'
),
(
	'TESTE 3',
	'LAST_TESTE 3',
	'teste3@.com',
	'teste3'
),
(
	'TESTE 4',
	'LAST_TESTE 4',
	'teste4@.com',
	'teste4'
),
(
	'TESTE 5',
	'LAST_TESTE 5',
	'teste5@.com',
	'teste5'
);

-- 2) Insira 5 perfís para os usuários inseridos
INSERT INTO profiles (bio, description, user_id)
SELECT concat('BIO DE ', first_name), concat('DESCRICAO DE ', first_name), id FROM users
ORDER BY id DESC
LIMIT 5;

-- 3) Insira permissões (roles) para os usuários inseridos
INSERT INTO users_roles (user_id, role_id)
SELECT u.id, (SELECT id FROM roles ORDER BY rand() LIMIT 1) FROM users as u
ORDER BY u.id DESC
LIMIT 5;

-- 4) Selecione os últimos 5 usuários por ordem decrescente
SELECT id, first_name FROM users 
ORDER BY id DESC
LIMIT 5;

-- 5) Atualize o último usuário inserido
UPDATE users set first_name = 'TESTE 5 atualizado' WHERE id = 115;

-- 6) Remova uma permissão de algum usuário
DELETE FROM users_roles WHERE user_id = 115;

-- 7) Remova um usuário que tem a permissão "PUT"
DELETE FROM users_roles WHERE role_id = 3;

-- 8) Selecione usuários com perfís e permissões (obrigatório)
SELECT u.first_name, p.bio, ur.role_id FROM users u, profiles p, users_roles ur
WHERE u.id = p.user_id AND p.user_id = ur.user_id;

-- 9) Selecione usuários com perfís e permissões (opcional)
SELECT u.first_name, p.bio, ur.role_id FROM users u, profiles p, users_roles ur
WHERE u.id = p.user_id AND p.user_id = ur.user_id OR u.id != p.user_id AND p.user_id != ur.user_id;

-- 10) Selecione usuários com perfís e permissões ordenando por salário
SELECT u.first_name, p.bio, ur.role_id, u.salary FROM users u, profiles p, users_roles ur
WHERE u.id = p.user_id AND p.user_id = ur.user_id
ORDER BY u.salary DESC;
