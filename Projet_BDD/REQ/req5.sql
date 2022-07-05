set search_path to pr;
\! echo "5- le nom,le poids, la matiere et la couleur des composants du produit numero 1101"
select nom  ,poids ,matiere,couleur
from produits as p , equipements as e ,produit_categories as pc
where p.id_produit=pc.id_produit
and e.id_categorie=pc.id_categorie
and p.id_produit=1101;
