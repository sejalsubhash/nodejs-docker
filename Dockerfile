#Base Image
FROM node:18

#Set working Directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install


# Copy rest of the application
COPY . .

# Start the app
CMD ["npm", "start"]

