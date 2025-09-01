FROM node:20-alpine

# Set working directory inside container
WORKDIR /app

# Copy only package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Expose port (change if needed)
EXPOSE 5050

# Start the app
CMD ["node", "server.js"]