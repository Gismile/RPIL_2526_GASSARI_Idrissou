# IFRI_MentorLink - Projet Intégrateur (Rattrapage)

Application simplifiée de mise en relation entre mentorés et mentors.

## Fonctionnalités
- Recherche de mentors par compétence.
- Matching intelligent basé sur une tolérance horaire de ± 1 heure.
- Interface moderne avec Bootstrap.

## Installation
1. Cloner le dépôt.
2. Créer l'environnement virtuel : `python -m venv venv`
3. Activer l'environnement et installer les dépendances : `pip install flask mysql-connector-python`
4. Importer la base de données `ifri_mentor` dans XAMPP via le fichier SQL fourni.
5. Lancer l'application : `python app.py`