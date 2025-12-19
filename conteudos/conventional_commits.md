# Conventional Commits

**Conventional Commits** são um **padrão para escrever mensagens de commit no Git**, com o objetivo de tornar o histórico **mais claro, padronizado e automatizável**.

Eles definem **uma estrutura fixa** para a mensagem de commit, facilitando:

* Leitura do histórico
* Geração automática de changelog
* Versionamento semântico (SemVer)
* Integração com pipelines de CI/CD

---

## Estrutura básica de um Conventional Commit

```text
<tipo>(<escopo opcional>): <descrição curta>
```

### Exemplo

```text
feat(auth): adiciona autenticação via JWT
```

---

## Tipos mais comuns de commit

### feat (feature)

* Usado quando **adiciona uma nova funcionalidade**

```text
feat: adiciona tela de cadastro
```

---

### fix

* Usado para **correção de bugs**

```text
fix: corrige erro ao salvar usuário
```

---

### docs

* Alterações apenas em **documentação**

```text
docs: atualiza README com instruções de instalação
```

---

### style

* Mudanças de **formatação**, sem alterar lógica

```text
style: ajusta identação do código
```

---

### refactor

* Refatoração de código sem mudar comportamento

```text
refactor: melhora organização do serviço de pagamento
```

---

### test

* Criação ou ajuste de testes

```text
test: adiciona testes para validação de CPF
```

---

### chore

* Tarefas de manutenção que não afetam o código principal

```text
chore: atualiza dependências do projeto
```

---

## Escopo (opcional)

O escopo indica **onde a mudança ocorreu**:

```text
feat(api): adiciona endpoint de login
fix(ui): corrige alinhamento do botão
```

---

## Quebra de compatibilidade (BREAKING CHANGE)

Quando o commit **quebra compatibilidade**, deve ser sinalizado:

### Opção 1 – Exclamação `!`

```text
feat!: remove suporte à autenticação básica
```

### Opção 2 – Rodapé do commit

```text
BREAKING CHANGE: endpoint /login foi removido
```

---

## Por que usar Conventional Commits?

* Padroniza mensagens de commit
* Facilita trabalho em equipe
* Permite automações (ex: versionamento automático)
* Deixa o histórico mais profissional e organizado

---

## Quando vale a pena usar?

* Projetos em equipe
* Projetos com CI/CD
* Bibliotecas e APIs
* Projetos que seguem versionamento semântico

---

* 👉🏻 [Clique aqui para voltar ao cheat sheet do Git](git_cheat_sheet.md) 📒
* 👉🏻 [Clique aqui para voltar às boas práticas de commit](commit_boas_práticas.md) 📒
* 👉🏻 [Clique aqui para voltar ao Readme](../README.md) 📒
