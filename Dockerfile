# base image
FROM node:18-slim

# Create and change to the app directory.
WORKDIR /usr/app

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Install production dependencies.
RUN npm ci --only=production

# Build the application
RUN npm run build

# Command to run the app
CMD ["npm", "start"]