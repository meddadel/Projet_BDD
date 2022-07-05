set search_path to pr;
\! echo "4- les 10 clients qui ont fait le plus de commande"
select count(id_commande) ,nom , l.id_client
from commandes as c , clients as l
where l.id_client=c.id_client
group by l.id_client
order by count desc
limit 10;
