# Author: Irfan Sayyed

# Use a specific version of the Node.js base image
FROM node:16-alpine AS build

WORKDIR /app

# Copy only package files first to leverage caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your Vite default port - 5173
EXPOSE 5173

# Build the application
RUN npm run build

# Define the initial command to run on container startup
CMD ["npm", "run", "host"]
