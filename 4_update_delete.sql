UPDATE Bicicleta
SET status = 'em_uso', id_estacao_atual = NULL
WHERE id_bicicleta = 'BK004';

-- UPDATE 2: Corrigir e-mail de um usuário
UPDATE Usuario
SET email = 'joao.corrigido@email.com'
WHERE cpf = '12345678901';

-- UPDATE 3: Enviar bicicleta para manutenção
UPDATE Bicicleta
SET status = 'em_manutencao', id_estacao_atual = NULL
WHERE id_bicicleta = 'BK002';

-- DELETE 1: Remover usuário inativo (só se não tiver aluguéis)
DELETE FROM Usuario
WHERE cpf = '00011122233'
  AND cpf NOT IN (SELECT cpf_usuario FROM Aluguel WHERE cpf_usuario = '00011122233');

-- DELETE 2: Remover aluguel em andamento cancelado (ex.: erro)
DELETE FROM Aluguel
WHERE id_aluguel = 999 AND data_hora_fim IS NULL;

-- DELETE 3: Remover estação fictícia (só se não estiver em uso)
DELETE FROM Estacao
WHERE id_estacao = 99
  AND id_estacao NOT IN (SELECT id_estacao_atual FROM Bicicleta WHERE id_estacao_atual = 99)
  AND id_estacao NOT IN (SELECT id_estacao_retirada FROM Aluguel WHERE id_estacao_retirada = 99)
  AND id_estacao NOT IN (SELECT id_estacao_devolucao FROM Aluguel WHERE id_estacao_devolucao = 99);
