# Imagem base leve
FROM nginx:alpine

# Limpa a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do site para o container
COPY . /usr/share/nginx/html

# Expõe a porta 80
EXPOSE 443