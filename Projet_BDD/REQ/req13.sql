set search_path to pr;
\! echo "13- les 10 produits les plus commandés par nos clients adolescent "

WITH client_ado AS (select * from clients where datenaiss > (now()- interval '18 year')::date)
SELECT p.nom, count(p.nom)
from client_ado as c , produit_commandé as pc,produits as p, commandes as co
where co.id_client=c.id_client
and co.id_commande=pc.id_commande
and p.id_produit=pc.id_produit
group by p.id_produit
order by count desc
limit 10;
