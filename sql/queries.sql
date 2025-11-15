-- Pessoas Físicas
INSERT INTO pessoa (nome, endereco, telefone, email) VALUES
('Ana Ribeiro', 'Rua A, 123', '11999990001', 'ana.ribeiro@email.com'),
('Carlos Oliveira', 'Av. B, 456', '11999990002', 'carlos.oliveira@email.com'),
('Marina Souza', 'Rua C, 789', '11999990003', 'marina.souza@email.com');

-- Pessoas Jurídicas
INSERT INTO pessoa (nome, endereco, telefone, email) VALUES
('Tech Solutions LTDA', 'Av. Central, 1000', '1133334455', 'contato@techsolutions.com'),
('Comercial Alpha SA', 'Rua Alfa, 200', '1144445566', 'vendas@alpha.com');

INSERT INTO pessoa_fisica (id_pessoa_fisica, cpf, data_nascimento, sexo) VALUES
(1, '12345678901', '1995-04-12', 'F'),
(2, '98765432100', '1988-09-23', 'M'),
(3, '45678912399', '1999-01-15', 'F');

INSERT INTO pessoa_juridica (id_pessoa_juridica, cnpj, razao_social, inscricao_estadual) VALUES
(4, '12345678000155', 'Tech Solutions LTDA', 'ISENTO'),
(5, '98765432000199', 'Comercial Alpha SA', '1234567890');

INSERT INTO curso (nome, carga_horaria) VALUES
('Análise e Desenvolvimento de Sistemas', 2000),
('Engenharia da Computação', 3600),
('Administração', 2400);

INSERT INTO disciplina (nome, carga_horaria, ementa) VALUES
('Programação I', 80, 'Introdução à lógica de programação e algoritmos.'),
('Banco de Dados', 80, 'Modelagem e implementação de bancos relacionais.'),
('Redes de Computadores', 60, 'Fundamentos de redes e protocolos.'),
('Matemática Aplicada', 60, 'Conceitos matemáticos aplicados à computação.');

-- ADS
INSERT INTO curso_disciplina VALUES
(1, 1),
(1, 2),
(1, 4);

-- Engenharia da Computação
INSERT INTO curso_disciplina VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4);

-- Administração
INSERT INTO curso_disciplina VALUES
(3, 4);

INSERT INTO professor (id_pessoa_fisica, especializacao, titulacao) VALUES
(2, 'Sistemas de Informação', 'Mestrado'),
(3, 'Engenharia de Software', 'Doutorado');

INSERT INTO fornecedor (id_pessoa_juridica, categoria, contrato) VALUES
(4, 'Equipamentos de TI', 'Contrato TI-2024'),
(5, 'Material de escritório', 'Contrato Office-2024');

INSERT INTO aluno (id_pessoa_fisica, id_curso, matricula, data_ingresso, status) VALUES
(1, 1, '20240001', '2024-02-10', 'Ativo'),
(3, 2, '20240002', '2024-02-10', 'Ativo');

INSERT INTO aluno_disciplina (id_aluno, id_disciplina, semestre, ano, nota, frequencia) VALUES
(1, 1, '1º', 2024, NULL, NULL),
(1, 2, '1º', 2024, NULL, NULL),

(2, 1, '1º', 2024, NULL, NULL),
(2, 3, '1º', 2024, NULL, NULL),
(2, 4, '1º', 2024, NULL, NULL);
