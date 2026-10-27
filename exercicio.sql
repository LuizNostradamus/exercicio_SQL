CREATE DATABASE banco;
USE banco;

CREATE TABLE banco_ai(
	cpf VARCHAR(20) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    escolaridade VARCHAR(100) NOT NULL,
    atua VARCHAR(20)
);

SELECT * FROM banco_ai;

-- Esolhendo quem tem superior e é maior que 20
SELECT nome FROM banco_ai WHERE escolaridade LIKE '%superior%' AND idade >= 20;

-- Escolhendo quemn atua na area 
SELECT nome FROM banco_ai WHERE atua LIKE '%sim%';

-- Escolhendo quem deixou atua vazio
SELECT nome FROM banco_ai WHERE atua IS NULL OR atua = '';

-- Escolhendo que NÃO estem so ensino medio 
SELECT nome FROM banco_ai WHERE escolaridade NOT LIKE '%medio%';

-- Escolhendo quem está entre 20 e 30
SELECT nome FROM banco_ai WHERE idade >= 20 AND idade <= 30;

-- Escolhendo quem está entre 20 a 30 e não atua na area
SELECT nome FROM banco_ai WHERE idade BETWEEN 20 AND 30 AND atua NOT LIKE '%sim%';

