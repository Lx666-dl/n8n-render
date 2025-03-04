FROM n8nio/n8n:latest
WORKDIR /usr/app
COPY . /usr/app
RUN apt-get update && apt-get install -y npm
RUN npm install
EXPOSE 5678
CMD ["n8n"]