-- 1) Film uzunluğu (length) ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2) Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3) Film tablosunda en düşük rental_rate ve en düşük replacement_cost değerine sahip filmleri sıralayınız
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4) Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız
SELECT customer_id, COUNT(*) AS toplam_odeme
FROM payment
GROUP BY customer_id
HAVING COUNT(*) = (
    SELECT MAX(odeme_sayisi)
    FROM (
        SELECT customer_id, COUNT(*) AS odeme_sayisi
        FROM payment
        GROUP BY customer_id
    ) AS alt_sorgu
);
