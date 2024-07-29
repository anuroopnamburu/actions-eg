# Use the official lightweight Node.js 14 image
FROM node:14-slim

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy the application files
COPY package.json .
COPY server.js .
COPY src/ ./src
COPY test/ ./test

# Install dependencies
RUN npm install --only=production

# Inform Docker that the container is listening on the specified port at runtime
EXPOSE 3000

# Run the web service on container startup
CMD [ "npm", "start" ]
