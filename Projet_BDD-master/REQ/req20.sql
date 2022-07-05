set search_path to pr;
\! echo "20- les commandes qui ont eu plus d un produit refusé"
SELECT distinct(r.id_commande)
FROM refus as r, refus as r1
WHERE r.id_commande=r1.id_commande
AND (r.exemplaire<>r1.exemplaire);
