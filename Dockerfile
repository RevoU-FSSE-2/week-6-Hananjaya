# Use the official Node as the base image
FROM node:18

# Set the working directory for the application
WORKDIR /usr/src/app

# Install app dependencies, and ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install

# Copy the Node source code into the container
COPY . .

# Expose the port that the Node app listens on
EXPOSE 3001

# Commands to run the Node app
CMD [ "node", "app.js" ]