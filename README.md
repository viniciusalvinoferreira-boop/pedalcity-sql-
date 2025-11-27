# PedalCity – Criação e Manipulação de Dados com SQL

## Identificação do Projeto
**Nome do Projeto**: PedalCity: Sistema de Gerenciamento de Aluguel de Bikes pela Cidade

## Descrição do Minimundo
O sistema PedalCity representa um serviço de aluguel compartilhado de bicicletas urbanas, com estações distribuídas pela cidade. Usuários cadastrados podem retirar uma bicicleta em qualquer estação disponível, utilizá-la por um período e devolvê-la em qualquer outra estação. O sistema registra informações sobre usuários, bicicletas, estações e todos os aluguéis realizados, garantindo o controle operacional do serviço de mobilidade sustentável.

## Objetivo
Implementar e manipular dados em um banco de dados relacional utilizando comandos SQL (DML), integrando o modelo lógico previamente normalizado com práticas reais de versionamento e execução de scripts.

## Scripts SQL Incluídos
Este repositório contém os seguintes arquivos, todos compatíveis com **SQLite**:

- `1_create_tables.sql` – Criação das tabelas (modelo lógico)
- `2_insert_data.sql` – Inserção de dados nas tabelas principais
- `3_select_queries.sql` – Consultas com `SELECT`, `JOIN`, `WHERE`, `ORDER BY`, `LIMIT`
- `4_update_delete.sql` – Comandos `UPDATE` e `DELETE` com condições seguras

## Como Executar
1. **Ferramenta recomendada**: [SQLiteStudio](https://sqlitestudio.pl/) (gratuito e leve)
2. Crie um novo banco de dados (ex: `pedalcity.db`)
3. Execute os scripts **na ordem listada acima**
4. Verifique os resultados usando a aba "Browse data" ou rodando consultas SQL

>  **Dica**: No SQLite, use `TEXT` para strings e datas, e `INTEGER` para números. Não há suporte a `VARCHAR`, `DATETIME` ou `AUTO_INCREMENT` — o script já está adaptado.

## Alinhamento Pedagógico
- **Taxonomia de Bloom**:  
  - **Aplicar**: execução de comandos SQL reais  
  - **Criar**: desenvolvimento de scripts completos e estruturados  
- **Taxonomia de Fink**:  
  - **Aplicação**: uso de ferramenta real (SQLiteStudio)  
  - **Integração**: combinação de modelagem lógica, normalização e DML  
  - **Aprendendo a aprender**: resolução autônoma de erros e adaptação aos limites do SGBD

## Observações
- Todos os scripts respeitam as **Três Formas Normais (1FN, 2FN, 3FN)**.
- Comandos `DELETE` incluem verificações para evitar violação de integridade referencial.
- O modelo evita redundâncias e dependências transitivas.

Desenvolvido como parte da disciplina de **Modelagem de Banco de Dados**.
