-- 1) actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer;

-- 2) actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- 3) actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;


-- TEKRAR EDENLER
-- 1a) actor ve customer tablolarındaki tüm first_name verileri
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

-- 2a) actor ve customer tablolarındaki kesişen first_name verileri
SELECT actor.first_name
FROM actor
INNER JOIN customer
    ON actor.first_name = customer.first_name;

-- 3a) actor'da olup customer'da olmayan first_name verileri
SELECT actor.first_name
FROM actor
LEFT JOIN customer
    ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL;
