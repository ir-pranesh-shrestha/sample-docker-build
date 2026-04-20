# Use official
FROM debian:12

# # Set working directory
# WORKDIR /app

# Copy package files and install dependencies
COPY app/package*.json ./app/
RUN mkdir application/
RUN cd application/
RUN cd app && npm install --production

# Copy application source
COPY app/index.js ./app/

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
