# Use an official Node.js base image
FROM node:lts-buster

# Clone your GitHub repo
RUN git clone https://github.com/DavMac751/YUYU-MD.git /root/YUYU-MD

# Set the working directory
WORKDIR /root/YUYU-MD

# Install dependencies
RUN npm install && npm install -g pm2

# Copy all other project files (if any local changes)
COPY . .

# Expose the port your app runs on
EXPOSE 9090

# Run the bot using npm
CMD ["npm", "start"]