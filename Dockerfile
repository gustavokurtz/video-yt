# Passo 1: Começamos com uma imagem Node.js
# 'alpine' é uma versão mais leve, ótima para produção
FROM node:18-alpine

# Passo 2: Definimos o nosso diretório de trabalho dentro do contentor
WORKDIR /app

# Passo 3: Copiamos o package.json e instalamos as dependências
# Isto é otimizado: só reinstala se o package.json mudar.
COPY package*.json ./
RUN npm install

# Passo 4: Copiamos o resto do código da nossa aplicação
COPY . .

# Passo 5: Informamos ao Docker que o nosso contentor usa a porta 8080
EXPOSE 9090

# Passo 6: O comando para executar a nossa aplicação quando o contentor iniciar
CMD [ "node", "index.js" ]