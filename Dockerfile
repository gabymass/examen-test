# 1. Utiliser l'image officielle Node.js 18
FROM node:18

# 2. Créer le dossier de travail dans le conteneur
WORKDIR /usr/src/app

# 3. Copier les fichiers de dépendances
COPY package*.json ./

# 4. Installer les dépendances du projet
RUN npm install

# 5. Copier tout le reste du code source
COPY . .

# 6. Exposer le port utilisé par l'application (le projet scotch-io utilise souvent 8080)
EXPOSE 8080

# 7. Lancer l'application
CMD [ "node", "server.js" ]