set search_path to pr;
\! echo "12- les 10 produits les mieux notés "

select nom, avg(etoile),count(etoile)
from produits as p join avis as a on (a.id_produit=p.id_produit)
group by p.id_produit,etoile
having etoile is not null
order by avg desc
limit 10;
