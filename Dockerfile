# 1. Imagem base oficial e com versão fixa (evita surpresas com "latest")
FROM node:18-alpine

# 2. Define o diretório de trabalho dentro do container
WORKDIR /app

# 3. Copia apenas os arquivos de dependência (aproveita cache do Docker)
#COPY package*.json ./

# 4. Instala dependências de produção (npm ci é mais rápido e confiável que npm install)
#RUN npm ci --only=production

# 5. Copia o restante do código da aplicação
#COPY . .

# 6. Expõe a porta que o app vai usar (documentação + mapeamento posterior)
EXPOSE 3000

# 7. Executa como usuário não-root (melhora segurança)
#USER node

# 8. Comando para iniciar a aplicação (formato exec é recomendado)
#CMD ["node", "server.js"]
