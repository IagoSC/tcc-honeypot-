FROM node:22

# Set working directory
WORKDIR /usr/src/app

# Install backend dependencies
COPY package*.json ./
RUN npm install

# Copy backend source code
COPY . .

# Build the backend application
RUN npm run build

# Copy i18n files to build directory (not handled by TypeScript)
RUN cp -r i18n build/i18n

# Generate CTF key file
RUN echo "juice-shop-ctf-key" > ctf.key

# Expose the backend API port
EXPOSE 3000

# Start the backend server
CMD ["npm", "start"]