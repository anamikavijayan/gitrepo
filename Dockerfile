
# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of your application code into the container
COPY . .

# Expose the port the app runs on (default for most Node.js apps is 3000)
EXPOSE 3000

# Command to run your app using npm start (make sure you have a start script in package.json)
CMD ["npm", "start"]
