# Base image
FROM node:latest
FROM node:18-alpine


# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies first (Docker layer optimization)
COPY package*.json ./
RUN npm install

# Copy remaining code
COPY . .

# Expose the port (no typo)
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
