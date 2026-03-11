-- in seleciona elementos entre os valores enviados
select * from users 
where id in (10,15,20,30,44,23,33) and first_name in ('carly', 'tanisha');