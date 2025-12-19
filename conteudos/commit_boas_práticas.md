# Boas práticas de commit

## 1. Faça commits pequenos e frequentes

* Cada commit deve resolver **um único problema** ou adicionar **uma funcionalidade específica**
* Evite commits grandes com muitas mudanças diferentes
* Commits menores facilitam:

  * Revisão de código
  * Identificação de erros
  * Reversão de mudanças

---

## 2. Escreva mensagens de commit claras

* Descreva **o que foi feito**, não como foi feito
* Seja objetivo e direto
* Evite mensagens genéricas como:

  * `update`
  * `fix`
  * `changes`

**Exemplos bons:**

* `Corrige validação de CPF no cadastro`
* `Adiciona endpoint de listagem de usuários`

---

## 3. Use o tempo verbal correto

* Utilize o **imperativo** na mensagem
* Pense como se o commit completasse a frase:

  * “Este commit …”

**Exemplos:**

* `Adiciona autenticação JWT`
* `Remove logs desnecessários`

---

## 4. Separe mudanças de código e formatação

* Não misture:

  * Correções de lógica
  * Ajustes de identação
  * Refatorações
* Isso torna o histórico mais limpo e legível

---

## 5. Teste antes de commitar

* Garanta que o código:

  * Compila
  * Passa nos testes
  * Não quebra funcionalidades existentes
* Nunca commite código “quebrado”

---

## 6. Não commite arquivos desnecessários

* Evite versionar:

  * Arquivos temporários
  * Logs
  * Dependências geradas automaticamente
* Utilize corretamente o `.gitignore`

---

## 7. Mantenha consistência no padrão

* Use sempre o mesmo idioma (ex: português ou inglês)
* Adote um padrão para mensagens (ex: [Conventional Commits](conventional_commits.md), se o time usar)
* Padronização facilita o trabalho em equipe

---

## 8. Use o commit para contar a história do projeto

* O histórico deve permitir entender:

  * O que foi feito
  * Quando foi feito
  * Por que foi feito
* Um bom histórico de commits é uma **documentação viva** do projeto

---

👉🏻 [Clique aqui para voltar ao Readme](../README.md) 📒
