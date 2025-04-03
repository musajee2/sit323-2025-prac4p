# Use Node.js official image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the app code
COPY . .

# Expose port (adjust as per your app)
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
