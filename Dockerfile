# Utiliser une image Node.js légère
FROM node:20-alpine  

# Définition du dossier de travail
WORKDIR /app  

# Copier les fichiers et installer les dépendances
COPY package.json package-lock.json ./
RUN npm install  

# Copier le reste du code
COPY . .  

# Exposer le port défini dans .env
EXPOSE 5000  

# Démarrer l'API
CMD ["node", "server.js"]
