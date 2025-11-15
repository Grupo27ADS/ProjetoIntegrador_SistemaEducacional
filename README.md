# ProjetoIntegrador_SistemaEducacional - Protótipos e Modelo de Dados

Este repositório contém os artefatos desenvolvidos para o **Projeto Integrador: Desenvovimento de sistemas orientado a objetos**.  
Inclui protótipos de interface, jornadas de usuário, modelo de dados (DER) e scripts SQL (DDL e DML).

---

## 🎨 Protótipos de Interface

Os protótipos foram desenvolvidos em **Figma**. Cada caso de uso possui sua pasta com as telas do fluxo estático:

- `tela-principal.png` — formulário inicial (campos)
- `tela-sucesso.png` — feedback de sucesso após submissão
- `tela-cpf-invalido.png` / `tela-cnpj-invalido.png` — validação de documento
- `tela-cpf-ja-cadastrado.png` / `tela-cnpj-ja-cadastrado.png` — duplicidade
- `tela-acesso-negado.png` — quando o usuário não possui permissão

**Observação:** a tela de **Cadastro de Aluno** contém todos os campos de pessoa física + campos acadêmicos (matrícula, curso, data de ingresso, status).

---

## 🔄 Protótipos das Jornadas

As jornadas (user flows) mostram a navegação entre telas para cada caso de uso, incluindo:

- verificação de acesso (Acesso Negado quando aplicável)  
- preenchimento do formulário  
- tratamento de erros (CPF/CNPJ inválido, já cadastrado)  
- confirmação de sucesso

Os arquivos de jornada estão em `prototipos_jornada/` (um arquivo por jornada).

---

## 🗄️ Modelo de Dados

Entidades principais modeladas:

- `pessoa`  
- `pessoa_fisica`  
- `pessoa_juridica`  
- `aluno`  
- `professor`  
- `fornecedor`  
- `curso`  
- `disciplina`  
- `curso_disciplina` (associação)  
- `aluno_disciplina` (associação N:N)

O modelo segue a ideia: **Pessoa → Pessoa Física / Pessoa Jurídica → especializações (Aluno, Professor, Fornecedor)**.

---

## 🧱 Scripts SQL

Os scripts estão na pasta `sql/`:

- **`create_tables.sql`** — criação do banco e das tabelas (DDL)
- **`queries.sql`** — inserts de exemplo para popular o banco (DML)

---

## 👥 Integrantes do grupo

| Nome |
|------|
| Lourene de Melo Camargo de Schueler | 
| Simone Patricio Silva | 

---

## 📌 Observações

- Os protótipos refletem os casos de uso definidos na fase 1.  
- As jornadas incluem fluxos alternativos (erros e acesso negado).  
- Os scripts SQL seguem a modelagem apresentada no DER.  

---