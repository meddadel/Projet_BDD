set search_path to pr;
\! echo "11- les 10 produits qui ont le plus de 5 étoiles  "

select nom, count(etoile)
from produits as p join avis as a on (a.id_produit=p.id_produit)
where etoile=5
group by p.id_produit
order by count desc
limit 10;
