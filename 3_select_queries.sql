SELECT 
    U.nome AS usuario,
    B.modelo AS bicicleta,
    E1.nome AS retirada_em,
    E2.nome AS devolvida_em,
    A.data_hora_inicio,
    A.data_hora_fim
FROM Aluguel A
JOIN Usuario U ON A.cpf_usuario = U.cpf
JOIN Bicicleta B ON A.id_bicicleta = B.id_bicicleta
JOIN Estacao E1 ON A.id_estacao_retirada = E1.id_estacao
JOIN Estacao E2 ON A.id_estacao_devolucao = E2.id_estacao
WHERE A.data_hora_fim IS NOT NULL
ORDER BY A.data_hora_inicio DESC;

-- 2. Bicicletas atualmente em uso
SELECT B.id_bicicleta, B.modelo, A.data_hora_inicio, U.nome
FROM Bicicleta B
JOIN Aluguel A ON B.id_bicicleta = A.id_bicicleta
JOIN Usuario U ON A.cpf_usuario = U.cpf
WHERE B.status = 'em_uso';

-- 3. Estações com menos de 5 bikes disponíveis
SELECT 
    E.nome,
    COUNT(B.id_bicicleta) AS bikes_disponiveis
FROM Estacao E
LEFT JOIN Bicicleta B ON E.id_estacao = B.id_estacao_atual AND B.status = 'disponivel'
GROUP BY E.id_estacao
HAVING bikes_disponiveis < 5;

-- 4. Usuários com mais de um aluguel
SELECT U.nome, COUNT(*) AS total_alugueis
FROM Usuario U
JOIN Aluguel A ON U.cpf = A.cpf_usuario
GROUP BY U.cpf
HAVING total_alugueis > 1;

-- 5. Últimos 3 aluguéis registrados
SELECT A.id_aluguel, U.nome, B.id_bicicleta, A.data_hora_inicio
FROM Aluguel A
JOIN Usuario U ON A.cpf_usuario = U.cpf
JOIN Bicicleta B ON A.id_bicicleta = B.id_bicicleta
ORDER BY A.data_hora_inicio DESC
LIMIT 3;
