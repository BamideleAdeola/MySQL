USE simplehealth;
/*
write SQL query to find the users who placed orders on 29th August 2021. 
Return user_id, ord_id, ord_date, order status, user_state 
*/
-- Query1
SELECT 
	u.id AS user_id,
	o.id AS order_id, 
    o.date_created AS order_date, 
    o.status AS order_status, 
    u.state AS user_state
FROM orders o, users u
WHERE o.user_id = u.id
AND DATE(o.date_created) ='2021-06-29';

-- Query 2
SELECT 
	u.id AS user_id,
	o.id AS order_id, 
    o.date_created AS order_date, 
    o.status AS order_status, 
    u.state AS user_state
FROM orders o, users u
WHERE o.user_id = u.id
AND o.date_created BETWEEN '2021-06-29 00:00:00' AND '2021-06-29 23:59:59' ;