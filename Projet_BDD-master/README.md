# Projet_BDD
## Binôme
* Notre groupe est constitué de :
 	* HAMDANI Harris, numéro d'étudiant 22014430
	* DJELLOUL ABBOU Mohammed Adel, numéro d'étudiant 22018734

**attention l’exécution du fichier de la création de la base de donnée va supprimer
un schéma "pr" s'il en existe un puis le recrée en ajoutant nos tables**

## Composition de la base de données
Notre base de données contient 18 tables
*  alimentations
*  avis
*  categories
*  clients
*  colis
*  commandable
*  commandes
*  equipements
*  evolution_prix
*  livraison
*  paniers
*  paniers_produits
*  produit_categories
*  produit_commandé
*  produits
*  refus
*  retours
*  textiles

Chaque table a les contraintes ON DELETE CASCADE ON UPDATE CASCADE nécessaires ainsi que des champs NOT NULL, UNIQUE ou des contrainte de type CHECK.

## Architecture du projet

**création de la base de données et peuplement:**
 Dans le fichier **projet.sql**, on trouve le code sql pour la création de la base de données. Le peuplement des tables est géré par **COPY.sql**.
 Les fichiers csv sont dans le dossier **CSV**. Ils ont été crées par nos soins, à base de scripts Python.
 * Pour créer et alimenter la base de données, il faut taper les commandes suivantes à la suite :
	* psql -f projet.sql
	* psql -f COPY.sql

 **les requêtes:**
 Les requêtes se trouvent toutes dans le fichier **req.sql** et individuellement dans un fichier **reqi.sql** où 1 <= **i** <= 20.
 Elles sont au nombre de 20, avec :
*   une requête récursive (14)
*   une requête avec le WITH (13)
*   une requête avec une jointure externe "LEFT JOIN"(19)
*   une ou plusieurs requêtes qui porte sur au moins trois ou plusieurs tables (5,6,8,9,10)
*   une requête avec ’auto jointure’(20)
*   requête exprimant une condition de totalité avec sous-requête corrélée (16)
*   requête exprimant une condition de totalité avec de l’agrégation (15)
*   une ou plusieurs sous-requête dans le FROM (2)
*   une ou plusieurs sous-requête dans le WHERE (1,2,8,9,10)
*   deux agrégats nécessitant GROUP BY et HAVING (12)
*   une requête impliquant le calcul de deux agrégats (12)
*   deux requêtes qui renverraient le même résultat si les tables de contenaient pas de NULLs, mais qui renvoient des résultats différents ici(17,18)

**Les modélisations**
Le fichier **Modélisation.pdf** correspond à la première modélisation que l'on a proposée. Elle est accompagnée du fichier **Explication_Modélisation.txt**,
qui explique quelques détails sur cette dernière.
Le fichier **Modélisation_Finale.pdf** est la modélisation finale.
