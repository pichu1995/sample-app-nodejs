FROM node:16
WORKDIR /app
COPY package*.json ./
RUN cd POCCode/TrackingService && npm install
COPY . .
EXPOSE 8080
CMD ["node", "app.js"]
