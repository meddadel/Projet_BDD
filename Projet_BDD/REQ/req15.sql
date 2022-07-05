set search_path to pr;
\! echo "15- le produit qui a été commandé sur toutes les commandes (avec de l agrégation)"

SELECT p.id_produit
from produit_commandé as p
group by id_produit
having count(distinct id_commande)=(
	select count(distinct id_commande)
	from commandes );
