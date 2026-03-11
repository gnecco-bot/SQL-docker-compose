-- Delete apaga registros da tebla
DELETE FROM users where id = 23;
-- Aviso: user SELECT para garantir que está apagando os valores corretos
select * from users where id between 10 and 25;
