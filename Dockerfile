FROM node:latest
WORKDIR /project
COPY prodection_archive.tar.gz .
EXPOSE 5000
RUN tar xzf prodection_archive.tar.gz 
RUN rm  -f prodection_archive.tar.gz 
RUN npm install --omit=dev
CMD ["node", "app.js"]