# Use official Apache HTTPD image
FROM httpd:latest

# Remove default Apache page
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy your HTML files into Apache root directory
COPY ./html/ /usr/local/apache2/htdocs/

# Expose port 80 inside the container
EXPOSE 80

# Start Apache in foreground
CMD ["httpd-foreground"]
