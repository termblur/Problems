/* Write your PL/SQL query statement below */
SELECT customer_number FROM
(SELECT customer_number, COUNT(order_number) AS COUNT
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC)
WHERE ROWNUM = 1