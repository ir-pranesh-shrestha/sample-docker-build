# Use official Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application source
COPY index.js .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
