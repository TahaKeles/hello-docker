# Using the official Node 18 Alpine image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only package.json and package-lock.json first
# This helps leverage Docker layer caching
COPY package*.json ./

# Install only production dependencies using 'npm ci'
# (Ensures a clean, repeatable install of exact versions)
RUN npm install

# Copy over the rest of the application files
COPY . .

# Expose port 3000 at runtime
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

