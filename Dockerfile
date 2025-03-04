FROM n8nio/n8n:latest
WORKDIR /usr/app
COPY . /usr/app

# Устанавливаем переменные окружения
ENV PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Открываем порт
EXPOSE 5678

# Устанавливаем зависимости
RUN npm install

# Запуск n8n
ENTRYPOINT ["n8n"]