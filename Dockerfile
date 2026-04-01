# Usa imagem base oficial do nginx
FROM nginx:alpine

# Remove configuração padrão do nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia sua configuração personalizada
COPY nginx/default.conf /etc/nginx/conf.d/

# Copia os arquivos da aplicação (HTML)
COPY app/ /usr/share/nginx/html/

# Expõe a porta 80 dentro do container
EXPOSE 80

# Comando padrão do nginx (já vem da imagem base)
CMD ["nginx", "-g", "daemon off;"]
