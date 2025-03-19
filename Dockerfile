# Utilisation de Node.js 18
FROM node:18

# Définition du répertoire de travail
WORKDIR /app

# Installer npm globalement pour s'assurer qu'il est disponible
RUN npm install -g npm@latest

# Copier tout le code source
COPY . .

# Installer les dépendances directement dans Docker
RUN npm install --legacy-peer-deps || npm install --force

# Exposer le port 3000
EXPOSE 3000

# Commande de lancement
CMD ["node", "server.js"]
