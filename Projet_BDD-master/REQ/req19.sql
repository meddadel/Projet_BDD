set search_path to pr;
\! echo "19- les produits et leurs avis avec id du client qui a donnée l avis et NULL pour les produis qui ont jamais eu d avis"

SELECT avis.id_client, produits.id_produit, avis
FROM produits LEFT JOIN avis ON avis.id_produit=produits.id_produit ;
