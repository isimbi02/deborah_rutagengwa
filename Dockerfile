# Use official Node.js image
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy app files
COPY package*.json ./
RUN npm install

COPY . .

# Expose app port
EXPOSE 3000

# Run the server
CMD ["npm", "start"]
