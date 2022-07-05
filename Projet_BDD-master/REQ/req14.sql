set search_path to pr;
\! echo "14- les differents produits que le client 1 a commandés"

WITH recursive produit_de_x(id_client,id_produit) AS (
	VALUES(1,0)
	UNION
	select c.id_client,p.id_produit
	from produit_commandé as p , produit_de_x as c, commandes as co
	where c.id_client=co.id_client and co.id_commande=p.id_commande)
select * from produit_de_x where id_produit<>0;
