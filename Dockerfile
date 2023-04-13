# Use the official Node.js image as the base image
FROM node:14

# Create a working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the server.js file to the working directory
COPY server.js .

# Expose the port that the server will listen on
EXPOSE 3000

# Start the server when the container runs
CMD ["node", "server.js"]
