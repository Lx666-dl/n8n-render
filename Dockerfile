FROM n8nio/n8n:latest
USER root
WORKDIR /usr/app
COPY . /usr/app
RUN apk add --no-cache npm
RUN npm install
EXPOSE 5678
CMD ["n8n"]
USER node