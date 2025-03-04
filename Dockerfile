FROM n8nio/n8n:latest
WORKDIR /usr/app
COPY . /usr/app

# Устанавливаем переменную окружения PORT
ENV PORT=5678

# Указываем, что контейнер будет слушать этот порт
EXPOSE 5678

# Устанавливаем зависимости (если нужно)
RUN npm install

# Запуск n8n
CMD ["n8n"]