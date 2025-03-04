FROM n8nio/n8n:latest

# Устанавливаем рабочую директорию
WORKDIR /usr/app

# Копируем файлы
COPY . /usr/app

# Обновляем apk и устанавливаем npm
RUN apk add --no-cache npm

# Устанавливаем зависимости
RUN npm install

# Открываем порт
EXPOSE 5678

# Запускаем n8n
CMD ["n8n"]