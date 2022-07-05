set search_path to pr;
\! echo "10- le chiffre d affaires de notre magasin sans compter les retours et les refus"

select sum(prix)
from clients as c ,commandes as co, produit_commandé as pc ,evolution_prix as ev
where c.id_client=co.id_client
and co.id_commande=pc.id_commande
and pc.annulation='f'
and pc.id_produit=ev.id_produit
and co.date=(
	select max(date) from evolution_prix as ev1
	where ev1.id_produit=pc.id_produit and ev1.date<= co.date)
and (pc.id_commande, pc.id_produit,pc.id_colis,pc.exemplaire) NOT IN
	((select r.id_commande,r.id_produit,r.id_colis,r.exemplaire
		from retours as r)
	UNION
	(select r.id_commande,r.id_produit,r.id_colis,r.exemplaire
		from refus as r));
