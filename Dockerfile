# Author: Irfan Sayyed

# Use a specific version of the Node.js base image
FROM node:16 AS build

WORKDIR /app

# Copy only package files first to leverage caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Clean up unnecessary files and dependencies
RUN rm -rf node_modules

# Use a smaller Node.js base image for the runtime stage
FROM node:16-alpine

WORKDIR /app

# Copy only the built artifacts from the build stage
COPY --from=build /app/dist /app

# Expose the port that your Vite default port - 5173
EXPOSE 5173

# Define the initial command to run on container startup
CMD ["npm", "run", "host"]
