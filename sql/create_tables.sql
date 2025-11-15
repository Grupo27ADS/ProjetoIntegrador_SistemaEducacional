CREATE DATABASE universidade;
USE universidade;

CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(120) NOT NULL
);

CREATE TABLE pessoa_fisica (
    id_pessoa_fisica INT PRIMARY KEY,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    FOREIGN KEY (id_pessoa_fisica) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE pessoa_juridica (
    id_pessoa_juridica INT PRIMARY KEY,
    cnpj CHAR(14) NOT NULL UNIQUE,
    razao_social VARCHAR(120) NOT NULL,
    inscricao_estadual VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_pessoa_juridica) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    carga_horaria INT NOT NULL,
    ementa TEXT NOT NULL
);

CREATE TABLE curso_disciplina (
    id_curso INT NOT NULL,
    id_disciplina INT NOT NULL,
    PRIMARY KEY (id_curso, id_disciplina),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa_fisica INT NOT NULL,
    id_curso INT NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    data_ingresso DATE NOT NULL,
    status ENUM('Ativo','Inativo','Trancado','Concluído') NOT NULL,
    FOREIGN KEY (id_pessoa_fisica) REFERENCES pessoa_fisica(id_pessoa_fisica),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa_fisica INT NOT NULL,
    especializacao VARCHAR(120) NOT NULL,
    titulacao VARCHAR(120) NOT NULL,
    FOREIGN KEY (id_pessoa_fisica) REFERENCES pessoa_fisica(id_pessoa_fisica)
);

CREATE TABLE fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa_juridica INT NOT NULL,
    categoria VARCHAR(120) NOT NULL,
    contrato VARCHAR(120) NOT NULL,
    FOREIGN KEY (id_pessoa_juridica) REFERENCES pessoa_juridica(id_pessoa_juridica)
);

CREATE TABLE aluno_disciplina (
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    semestre VARCHAR(10) NOT NULL,
    ano INT NOT NULL,
    nota DECIMAL(4,2) NULL,
    frequencia INT NULL,
    PRIMARY KEY (id_aluno, id_disciplina),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);
