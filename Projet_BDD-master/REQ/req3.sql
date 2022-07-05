set search_path to pr;
\! echo "3- les id_produit des 20 produits qui ont été refusé le plus"
select id_produit ,count("id_produit")
from refus
group by id_produit
order by count desc
limit 20;
