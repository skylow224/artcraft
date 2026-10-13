FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy your local static files into the container image
COPY . /app

# Expose the default port used by http-server
EXPOSE 8080

# Execute http-server immediately upon container startup
CMD ["npx", "http-server", "-p", "8080"]
