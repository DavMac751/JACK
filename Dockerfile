---

## ✅ `Dockerfile` (Fixed Clone Path & Install Order)

```dockerfile
FROM node:lts-buster

# Clone the actual public repo
RUN git clone https://github.com/DavMac751/YUYU-MD /root/yuyu-md

WORKDIR /root/yuyu-md

# Install dependencies properly
RUN npm install && npm install -g pm2

# Copy all files
COPY . .

EXPOSE 9090

CMD ["npm", "start"]