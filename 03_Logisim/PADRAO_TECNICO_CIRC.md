# Padrão Técnico para Criação de Arquivos .circ

## Objetivo

Definir um padrão para criação, organização e manutenção dos arquivos de circuito Logisim da disciplina Arquitetura de Computadores I.

---

# Ambiente

Os circuitos devem ser desenvolvidos utilizando o ambiente definido para a disciplina.

Informações obrigatórias:

- Software: Logisim
- Versão utilizada: registrar no arquivo de validação
- Extensão: .circ

---

# Nome dos arquivos

Utilizar nomes claros e identificáveis.

Formato recomendado:

Guia_XX_NomeDoCircuito_v01.circ


Exemplos:

Guia_04_Multiplexador_v01.circ

Guia_08_SomadorCompleto_v02.circ


Evitar:

final.circ

final2.circ

teste_novo.circ

---

# Organização visual do circuito

Adotar preferência:

## Entradas

Localizadas no lado esquerdo.

## Processamento

Localizado na região central.

## Saídas

Localizadas no lado direito.

---

# Identificação

Todos os circuitos devem possuir:

- entradas identificadas;
- saídas identificadas;
- componentes organizados;
- nomes claros.

---

# Ligações

Verificar:

- ausência de fios desconectados;
- ausência de conexões acidentais;
- largura dos bits correta;
- direção dos sinais correta.

---

# Componentes

Utilizar somente componentes necessários ao projeto.

Evitar:

- componentes sem uso;
- blocos abandonados;
- versões antigas dentro do mesmo arquivo.

---

# Versões

Durante desenvolvimento:

usar versões:

v01

v02

v03


Após validação:

manter somente a versão validada na pasta correspondente.
