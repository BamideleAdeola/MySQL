-- 2. Which of our users have not placed any orders?
SELECT 
    u.id
FROM users u
WHERE
    u.id NOT IN (SELECT 
            user_id
        FROM
            orders);
