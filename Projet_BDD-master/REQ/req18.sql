set search_path to pr;
\! echo "18- les 10 produits qui ont été evalués le plus (deux requetes qui donnent la meme chose si la table ne contient pas des null et le contraire si la table contient des null)"

\! echo "avec count(etoile) et etoile est un attribut nullable"
select id_produit ,count(etoile)
from avis
group by id_produit
order by count desc
limit 10;
