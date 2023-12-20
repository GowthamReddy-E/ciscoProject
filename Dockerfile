# Use the official Nginx image as the base image
FROM nginx:latest
ENV WELCOME_MESSAGE="Hi Hellow GoodMorning"
# Copy the custom index.html file into the default Nginx web root
COPY index.html /usr/share/nginx/html/index.html
# Expose port 80
EXPOSE 80
# Start Nginx when the container starts
CMD /bin/bash -c "envsubst < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"
