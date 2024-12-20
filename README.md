# Sample Node.js application

This repository is a sample Node.js application for Docker's documentation.

# Build for Development:

docker build --target development -t dockernode:dev .
docker run -p 8080:3000 dockernode:dev


or with .env
docker run --env-file .env -p 8080:3000 dockernode:dev
No need to change the build command

# Build for Production:

docker build --target production -t dockernode:prod .
docker run -p 8080:3000 dockernode:prod