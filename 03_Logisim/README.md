# Logisim - Arquitetura de Computadores I

## Objetivo

Esta pasta contém todos os arquivos relacionados ao desenvolvimento, teste e validação de circuitos digitais utilizando Logisim.

A organização foi criada para separar:

- circuitos de referência;
- projetos em desenvolvimento;
- testes;
- registros de validação.

---

# Estrutura

## 01_Referencias_Circ

Biblioteca de circuitos classificados por estado de validação.

### 01_Validados

Circuitos que passaram pelo processo completo de validação.

Critérios:

- arquivo abre corretamente;
- componentes corretos;
- conexões corretas;
- funcionamento confirmado;
- compatibilidade com o padrão definido.

---

### 02_Abrem_Nao_Validados

Arquivos que conseguem abrir no Logisim, porém ainda não passaram pelo processo completo de validação.

Podem conter:

- versões intermediárias;
- tentativas;
- arquivos recebidos;
- circuitos em análise.

---

### 03_Com_Problema

Arquivos que apresentam algum problema identificado.

Exemplos:

- erro ao abrir;
- componentes ausentes;
- conexões incorretas;
- funcionamento diferente do esperado.

---

### 04_Registros_de_Validacao

Documentação dos testes realizados em cada circuito.

Cada circuito validado deve possuir um registro contendo:

- nome do arquivo;
- versão do Logisim;
- testes realizados;
- resultado da validação.

---

# 02_Projetos

Área destinada aos circuitos desenvolvidos pelo aluno.

Exemplos:

- exercícios;
- trabalhos;
- implementações próprias.

---

# 03_Testes

Área experimental.

Utilizada para:

- novas ideias;
- testes de componentes;
- versões temporárias.

Arquivos desta pasta não são considerados entregues.

---

# Padrão de validação

Nenhum circuito deve ser considerado correto apenas porque abre.

Um circuito validado deve passar por:

1. abertura no ambiente correto;
2. conferência da estrutura;
3. teste funcional;
4. registro da validação.

---

# Fluxo recomendado

Novo circuito

↓

03_Testes

↓

Revisão

↓

01_Referencias_Circ/02_Abrem_Nao_Validados

↓

Validação completa

↓

01_Referencias_Circ/01_Validados
