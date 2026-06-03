# 1. Utiliser une image de base Java minimale (JRE 17)
FROM eclipse-temurin:17-jre

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier le fichier .jar généré par Maven dans le conteneur
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# 4. Exposer le port de l'application (celui configuré dans Spring Boot)
EXPOSE 8089

# 5. Commande pour exécuter l'application au démarrage du conteneur
ENTRYPOINT ["java", "-jar", "app.jar"]