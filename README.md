# IFRI_MentorLink - Projet Intégrateur (Rattrapage)

Application simplifiée de mise en relation entre mentorés et mentors.

## Fonctionnalités
- Recherche de mentors par compétence.
- Matching intelligent basé sur une tolérance horaire de ± 1 heure.
- Interface moderne avec Bootstrap.

- ## Technologies utilisées
- **Backend** : Python (Flask)
- **Frontend** : HTML, CSS, Bootstrap 
- **Base de données** : MySQL
- 
## Structure du projet :
RPIL_2526_GASSARI_Idrissou/

├── app.py              # Cœur du projet : Logique Flask, routage et matching

├── database.py         # Gestion de la connexion SQL (MySQL)

├── schema.sql          # Script SQL pour créer vos tables et insérer vos 3 mentors

├── static/
│   └── style.css       

└── templates/
    └── index.html      # Le formulaire et l'affichage des résultats
    

## Installation
1. Cloner le dépôt.
2. Créer l'environnement virtuel : `python -m venv venv`
3. Activer l'environnement et installer les dépendances : `pip install flask mysql-connector-python`
4. Importer la base de données `ifri_mentor` dans XAMPP via le fichier SQL fourni.
5. Lancer l'application : `python app.py`
