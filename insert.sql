-- Seleciona a base de dados
use base_de_dados;
-- Mostra as tabelas da base de dados
show tables;
-- Descreve as colunas da tabela
describe users;
-- Inserir registros na base de dados
insert into users (first_name, last_name, email, password_hash) values 
("Joana", "Ferreira", "joana@gmail.com", "b_hash"), 
("Feli", "Silva", "feli@gmail.com", "c_hash"), 
("Helena", "Rosana", "helena@gmail.com", "d_hash");




