# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port your Vite app will run on
EXPOSE 3000

# Set environment variable to disable browser opening
ENV BROWSER none

# Command to start the Vite development server with --host option
CMD ["yarn", "start", "--host", "0.0.0.0"]
