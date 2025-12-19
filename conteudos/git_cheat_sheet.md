# Git - Cheat Sheet

## 🔧 Configuração inicial

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"
git config --global core.editor code   # VS Code como editor
git config --list
```

---

## 📁 Criar ou clonar repositório

```bash
git init                    # Inicializa um repositório
git clone <url>             # Clona um repositório remoto
```

---

## 📌 Status e histórico

```bash
git status                  # Mostra estado dos arquivos
git log                     # Histórico de commits
git log --oneline --graph   # Histórico resumido e visual
git diff                    # Diferenças não commitadas
```

---

## ➕ Adicionar arquivos (stage)

```bash
git add arquivo.txt         # Adiciona arquivo específico
git add .                   # Adiciona todos os arquivos
git reset arquivo.txt       # Remove do stage
```

---

## ✅ Commit

```bash
git commit -m "mensagem"    # Cria commit
git commit -am "mensagem"   # Add + commit (arquivos já rastreados)
```

👉 Boa prática: commits pequenos e mensagens claras. (veja mais em [Boas práticas de commit](commit_boas_práticas.md))

---

## 🌿 Branches

```bash
git branch                  # Lista branches
git branch nome-branch      # Cria branch
git checkout nome-branch   # Troca de branch
git checkout -b nova       # Cria e troca
git switch nome-branch     # Alternativa moderna
git switch -c nova
```

---

## 🔀 Merge e Rebase

```bash
git merge branch            # Mescla branch atual
git rebase branch           # Reaplica commits
```

👉 Use **merge** para preservar histórico e **rebase** para histórico linear.

---

## 🌐 Repositório remoto

```bash
git remote -v               # Lista remotos
git remote add origin url   # Adiciona remoto
git fetch                   # Baixa alterações
git pull                    # Fetch + merge
git push                    # Envia commits
git push -u origin branch   # Define upstream
```

---

## ⏪ Desfazer alterações

```bash
git checkout -- arquivo     # Descarta alterações locais
git restore arquivo         # Forma moderna
git reset --soft HEAD~1     # Desfaz commit (mantém stage)
git reset --hard HEAD~1     # Desfaz commit (perde tudo)
```

⚠️ `--hard` remove alterações definitivamente.

---

## 🏷️ Tags

```bash
git tag                     # Lista tags
git tag v1.0                # Cria tag
git push origin v1.0        # Envia tag
git push --tags             # Envia todas
```

---

## 🧹 Limpeza

```bash
git clean -n                # Simula limpeza
git clean -f                # Remove arquivos não rastreados
```

---

## 🔍 Ajuda

```bash
git help comando
git comando --help
```

---

## ⭐ Dicas rápidas

* Sempre use `.gitignore`
* Commits frequentes e pequenos
* Atualize sua branch antes de abrir PR
* Evite `rebase` em branch compartilhada
* Use **[Conventional Commits](conventional_commits.md)** para padronizar mensagens

---

👉🏻 [Clique aqui para voltar ao Readme](../README.md) 📒
