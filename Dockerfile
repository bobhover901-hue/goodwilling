# Use official lightweight nginx image (alpine variant is ~5-10 MB)
FROM nginx:alpine

# Copy all your static files (index.html, css/, js/, images/, etc.) into nginx's default serve folder
COPY . /usr/share/nginx/html

# Optional: If you have a custom nginx config (e.g., for SPA routing or headers), copy it
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 (nginx listens here by default)
EXPOSE 80

# Start nginx in foreground (required for Docker/container apps)
CMD ["nginx", "-g", "daemon off;"]
