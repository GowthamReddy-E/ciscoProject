# Use the official Nginx image as the base image
FROM nginx:latest
ENV WELCOME_MESSAGE = Welcome to My Website
# Copy the custom index.html file into the default Nginx web root
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]