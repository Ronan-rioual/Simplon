#importation des bibliothèques
import random
import mysql.connector

#connection à la bdd
config = {
  'user': 'root',
  'password': 'root',
  'host': 'localhost',
  'port': '3306',
  'database': 'binomotron',
  'raise_on_warnings': True,
}

connection = mysql.connector.connect(**config)
curseur = connection.cursor()
print("connection OK")

#requète sql pour récupérer la liste des étudiants de la bdd
curseur.execute("""SELECT * FROM etudiants""")
liste_etudiant = curseur.fetchall()

#mélange de la liste pour créer de l'aléatoire
random.shuffle(liste_etudiant)

equipe = 1

nom_projet = input("Quel est le nom du projet ?")

#affichage des équipes
for i in range(0, 20, 2):
    print("equipe : ", equipe)
    print(liste_etudiant[i:i+2])
    #requète sql inserant les groupes dans la table "groupe"
    sql_groupe = ("INSERT INTO groupe (libelle_groupe) VALUES (%s)")
    var_groupe = ("équipe"+ str(equipe))
    curseur.execute(sql_groupe, (var_groupe,))
    connection.commit()
    equipe += 1

#-------requète sql inserant les données du nom du projet
sql = ("INSERT INTO projet (libelle_projet) VALUES (%s)")
var = (nom_projet)

curseur.execute(sql, (var,))

connection.commit()
#--------fin du commentaire

#requète sql inserant les combinaison groupe/etudiant/projet dans la table groupe_etudiant /// à finir
sql = ("INSERT INTO groupe_etudiant (id_etudiant, id_groupe, id_projet) VALUES (%s, )")
var = (nom_projet)

curseur.execute(sql, (var,))

connection.commit()

#fin du programme
connection.close()