# Base Stage
FROM node:23-alpine3.20 AS base
WORKDIR /home/node/app
COPY package*.json ./

# Development Stage
FROM base AS development
RUN npm install
COPY . . 
RUN chown -R node:node /home/node/app
USER node
EXPOSE 8080
CMD ["npm", "run", "dev"]

# Production Stage
FROM base AS production
RUN npm install --only=production
COPY . .  
RUN chown -R node:node /home/node/app
USER node
EXPOSE 8080
CMD ["node", "src/index.js"]