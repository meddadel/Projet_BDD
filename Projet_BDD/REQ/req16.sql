set search_path to pr;
\! echo "16- le produit qui a été commandé sur tous les commandes avec des sous requetes corrélées attention cette requête peut prendre des minutes pour calculer le resultat vu la taille des deux tables dans le NUTURAL JOIN"

SELECT p.id_produit
from produit_commandé as p
where NOT EXISTS(
	SELECT c.id_commande
	from commandes as c
	where c.id_commande NOT IN
		(select c2.id_commande
			from commandes as c2 NATURAL JOIN produit_commandé as p2
			where p2.id_produit=p.id_produit));
