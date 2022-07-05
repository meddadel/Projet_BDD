set search_path to pr;
\! echo "6- 10 retours avec  id et le nom du client qui a fait le retour avec le nom du produit et le motif du retour"
select c.nom,c.id_client, p.nom,r.motif
from clients as c , commandes as co ,produits as p, retours as r
where c.id_client=co.id_client
and r.id_commande=co.id_commande
and p.id_produit=r.id_produit
group by c.id_client, p.nom, r.motif
limit 10;
