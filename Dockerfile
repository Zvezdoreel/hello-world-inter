FROM node:latest
WORKDIR /project
COPY . .
EXPOSE 5000
RUN npm install --omit=dev
CMD ["node", "app.js"]