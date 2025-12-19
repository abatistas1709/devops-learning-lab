# 🐳 Docker – Cheat Sheet

## 🔹 Conceitos básicos

* **Imagem**: template imutável com a aplicação e dependências
* **Container**: instância em execução de uma imagem
* **Dockerfile**: receita para criar uma imagem
* **Volume**: persistência de dados fora do container
* **Network**: comunicação entre containers
* **Docker Hub**: repositório de imagens

---

## 🔹 Comandos básicos

```bash
docker --version
docker info
docker help
```

---

## 📦 Imagens

```bash
docker images                     # listar imagens
docker pull nginx                 # baixar imagem
docker rmi nginx                  # remover imagem
docker build -t minha-imagem .    # criar imagem a partir do Dockerfile
docker tag img:tag repo/img:tag   # criar tag
docker push repo/img:tag          # enviar imagem
```

---

## ▶️ Containers

```bash
docker run nginx                          # roda container
docker run -d nginx                       # modo detached
docker run -p 8080:80 nginx               # mapear portas
docker run --name web nginx               # nomear container
docker run -it ubuntu bash                # modo interativo
```

---

## ⏹️ Gerenciamento de containers

```bash
docker ps                  # containers em execução
docker ps -a               # todos os containers
docker stop container      # parar
docker start container     # iniciar
docker restart container   # reiniciar
docker rm container        # remover
docker logs container      # ver logs
docker exec -it container bash  # acessar container
```

---

## 🧱 Dockerfile (exemplo)

```dockerfile
FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

---

## 💾 Volumes

```bash
docker volume ls
docker volume create meu-volume
docker run -v meu-volume:/data nginx
docker run -v $(pwd):/app nginx
```

---

## 🌐 Networks

```bash
docker network ls
docker network create minha-rede
docker run --network minha-rede nginx
```

---

## 🧹 Limpeza (cuidado!)

```bash
docker system df              # uso de espaço
docker system prune           # remove tudo não usado
docker image prune            # imagens não usadas
docker container prune        # containers parados
docker volume prune           # volumes não usados
```

---

## 🧩 Docker Compose

```bash
docker compose up             # subir serviços
docker compose up -d          # modo background
docker compose down           # parar e remover
docker compose ps             # status
docker compose logs           # logs
```

### Exemplo `docker-compose.yml`

```yaml
services:
  app:
    image: node:18
    ports:
      - "3000:3000"
  db:
    image: mysql:8
    environment:
      MYSQL_ROOT_PASSWORD: root
```

---

## ⚙️ Boas práticas

* Use **imagens oficiais**
* Prefira **imagens pequenas** (alpine)
* Uma responsabilidade por container
* Use `.dockerignore`
* Evite rodar como root
* Versione imagens com tags

---

## 🆘 Dicas rápidas

* Erro de porta ocupada → verifique `-p`
* Container cai → ver `docker logs`
* Alterou código → precisa rebuildar imagem
* Dados sumindo → use volumes

---

👉🏻 [Clique aqui para voltar ao Readme](../README.md) 📒
