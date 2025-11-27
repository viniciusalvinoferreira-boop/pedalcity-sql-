CREATE TABLE Usuario (
    cpf TEXT PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    telefone TEXT NOT NULL,
    data_cadastro TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'ativo'
);

CREATE TABLE Estacao (
    id_estacao INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco_rua TEXT NOT NULL,
    endereco_numero TEXT NOT NULL,
    bairro TEXT NOT NULL,
    cidade TEXT NOT NULL,
    capacidade_max INTEGER NOT NULL
);

CREATE TABLE Bicicleta (
    id_bicicleta TEXT PRIMARY KEY,
    modelo TEXT,
    status TEXT NOT NULL DEFAULT 'disponivel',
    id_estacao_atual INTEGER,
    FOREIGN KEY (id_estacao_atual) REFERENCES Estacao(id_estacao)
);

CREATE TABLE Aluguel (
    id_aluguel INTEGER PRIMARY KEY AUTOINCREMENT,
    cpf_usuario TEXT NOT NULL,
    id_bicicleta TEXT NOT NULL,
    id_estacao_retirada INTEGER NOT NULL,
    data_hora_inicio TEXT NOT NULL,
    id_estacao_devolucao INTEGER,
    data_hora_fim TEXT,
    FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
    FOREIGN KEY (id_bicicleta) REFERENCES Bicicleta(id_bicicleta),
    FOREIGN KEY (id_estacao_retirada) REFERENCES Estacao(id_estacao),
    FOREIGN KEY (id_estacao_devolucao) REFERENCES Estacao(id_estacao)
);
