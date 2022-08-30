FROM node:latest
WORKDIR /project
COPY . .
EXPOSE 5000
CMD ["node", "app.js"]