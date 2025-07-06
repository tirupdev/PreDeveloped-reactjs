# Use official Apache HTTPD image
FROM httpd:latest

# Remove default Apache content
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy React build into Apache's web root
COPY build/ /usr/local/apache2/htdocs/

EXPOSE 80
