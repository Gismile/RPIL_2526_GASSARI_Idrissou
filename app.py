from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

def get_db_connection():
    return mysql.connector.connect(
        host='localhost',
        user='root',
        password='',
        database='ifri_mentor'
    )

@app.route('/', methods=['GET', 'POST'])
def index():
    resultats = []
    if request.method == 'POST':
        # On récupère les valeurs du formulaire
        competence_recherchee = request.form.get('competence').strip().lower()
        heure_recherchee = int(request.form.get('heure'))
        
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        # On récupère tous les mentors
        cursor.execute("SELECT * FROM mentors")
        mentors = cursor.fetchall()
        
        for m in mentors:
            # On prépare la liste des compétences du mentor (en minuscules pour comparer)
            comp_list = [c.strip().lower() for c in m['competences'].split(',')]
            
            # Calcul de l'écart d'heure
            ecart = abs(m['disponibilites_heure'] - heure_recherchee)
            
            # Vérification : Compétence matchée ET tolérance horaire de +/- 1h
            if competence_recherchee in comp_list and ecart <= 1:
                
                # Calcul dynamique du score
                if ecart == 0:
                    m['score'] = 100
                else: # c'est à dire ecart == 1
                    m['score'] = 75
                
                resultats.append(m)
        
        cursor.close()
        conn.close()
        
    return render_template('index.html', resultats=resultats)

if __name__ == '__main__':
    app.run(debug=True)