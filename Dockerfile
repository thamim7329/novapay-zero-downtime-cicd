FROM node:18-alpine

WORKDIR /usr/src/app

COPY app/package*.json ./
RUN npm install --production

COPY app/ .

# Security: Run as non-root user (PCI-DSS & Trivy best practice)
USER node

EXPOSE 3000
CMD ["npm", "start"]