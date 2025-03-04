FROM n8nio/n8n:latest
WORKDIR /usr/app
COPY . /usr/app
RUN npm install
EXPOSE 5678
CMD ["npm", "run", "start"]