# Use Nginx as the lightweight web server
FROM nginx:alpine

# Copy your website files into the Nginx html folder
# This assumes your HTML files are in the root of your repo
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
