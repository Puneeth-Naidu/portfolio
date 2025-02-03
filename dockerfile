# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set working directory to Nginx HTML directory
WORKDIR /usr/share/nginx/html

# Remove default nginx website files
RUN rm -rf ./*

# Copy your website files from GitHub to the container
COPY . .

# Expose port 80 to allow access
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
