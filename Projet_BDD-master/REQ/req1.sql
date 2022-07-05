set search_path to pr;
\! echo "1- le nom des produits et leur prix actuel"
SELECT nom, date, prix
FROM evolution_prix AS ev ,produits as pr
where pr.id_produit=ev.id_produit
and date=(select max("date")
		from evolution_prix as evo
		where pr.id_produit=evo.id_produit);
