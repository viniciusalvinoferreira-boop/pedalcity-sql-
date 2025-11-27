-- Inserção de dados iniciais no projeto PedalCity

-- Estações
INSERT INTO Estacao (nome, endereco_rua, endereco_numero, bairro, cidade, capacidade_max) VALUES
('Estação Central', 'Av. Paulista', '1000', 'Bela Vista', 'São Paulo', 20),
('Parque Ibirapuera', 'Av. Pedro Álvares Cabral', 'S/N', 'Moema', 'São Paulo', 15),
('Liberdade', 'Rua da Glória', '300', 'Liberdade', 'São Paulo', 12);

-- Usuários
INSERT INTO Usuario (cpf, nome, email, telefone, data_cadastro, status) VALUES
('12345678901', 'João Silva', 'joao@email.com', '11987654321', '2025-01-10', 'ativo'),
('98765432109', 'Maria Oliveira', 'maria@email.com', '11912345678', '2025-02-15', 'ativo'),
('45678912345', 'Carlos Souza', 'carlos@email.com', '11955556666', '2025-03-01', 'ativo');

-- Bicicletas
INSERT INTO Bicicleta (id_bicicleta, modelo, status, id_estacao_atual) VALUES
('BK001', 'Urbana A3', 'disponivel', 1),
('BK002', 'Urbana A3', 'disponivel', 1),
('BK003', 'Elétrica E1', 'disponivel', 2),
('BK004', 'Urbana A3', 'disponivel', 3);

-- Aluguéis (dois concluídos, um em andamento)
INSERT INTO Aluguel (cpf_usuario, id_bicicleta, id_estacao_retirada, data_hora_inicio, id_estacao_devolucao, data_hora_fim) VALUES
('12345678901', 'BK001', 1, '2025-11-01 08:30:00', 2, '2025-11-01 09:15:00'),
('98765432109', 'BK003', 2, '2025-11-05 17:00:00', 1, '2025-11-05 18:20:00'),
('45678912345', 'BK004', 3, '2025-11-27 14:00:00', NULL, NULL);
