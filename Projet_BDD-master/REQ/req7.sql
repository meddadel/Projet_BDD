set search_path to pr;
\! echo "7- pour chaque client qui a donné des avis le nombre d étoiles classé par étoile"
select c.id_client,c.nom ,c.prenom ,etoile, count(etoile)
from clients as c , avis as a
where a.id_client=c.id_client
group by c.id_client,etoile;
