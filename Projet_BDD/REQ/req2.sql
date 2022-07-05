set search_path to pr;
\! echo "2- le nom et le prix actuel des produits non disponibles"
SELECT nom, date, prix
FROM evolution_prix AS ev ,(select * from produits where dispo='f') as pr
where pr.id_produit=ev.id_produit
and date=(
	select max("date")
	from evolution_prix as evo
	where pr.id_produit=evo.id_produit);
