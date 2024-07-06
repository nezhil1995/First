# Use the official Node.js image from the Docker Hub
FROM node:16.20.1

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Specify the command to run the application
CMD ["node", "app.js"]
