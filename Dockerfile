# Author: Irfan Sayyed

# Using Node Base Image
FROM node:18

WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that your Vite default port - 5173
EXPOSE 5173

# Build
RUN npm run build

# Intital command to run on container at startup
CMD ["npm", "run" , "host"]
