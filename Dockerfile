# Utilisation d'une image Node.js
FROM node:18

# Définition du répertoire de travail
WORKDIR /app

# Copier les fichiers du projet
COPY package*.json ./
RUN npm install

# Copier le reste des fichiers
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Commande de lancement
CMD ["node", "server.js"]

