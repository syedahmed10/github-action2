FROM node:18

WORKDIR /app

# Copy only dependency files first
COPY package*.json .    # <-- This is the key fix

# Install dependencies
RUN npm install

# Now copy the rest of the application
COPY . .

# Start the app
CMD ["npm", "start"]
