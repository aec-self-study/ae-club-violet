SELECT
c.id AS customer_id,
c.name AS name,
c.email AS email,
MIN(o.created_at) AS first_order,
SUM(o.total) AS total_orders
FROM `analytics-engineers-club.coffee_shop.customers` AS c
JOIN `analytics-engineers-club.coffee_shop.orders` AS o
ON c.id = o.customer_id
GROUP BY
customer_id, name, email
ORDER BY first_order
