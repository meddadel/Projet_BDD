set search_path to pr;
\! echo "17- les 10 produits qui ont été evalués le plus deux requetes qui donnent la meme chose si la table ne contient pas des null et le contarire si la table contient des null"

\! echo "avec count(*)"
select id_produit,count(*)
from avis
group by id_produit
order by count desc
limit 10;
