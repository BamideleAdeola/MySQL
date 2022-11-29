USE simplehealth;
-- WHAT ARE THE TOP 2 STATES WHERE OUR USERS COME FROM?
SELECT 
	u.state, COUNT(l.user_id) AS freq
FROM logs l
  JOIN users u 
  ON l.user_id = u.id
GROUP BY u.state
ORDER BY freq DESC
LIMIT 2;

SELECT 
	DAYNAME(OrderDate) as WeekDay, COUNT(*)
FROM Orders O
GROUP BY DAYNAME(OrderDate)
OrDER BY COUNT(*) DESC;

SELECT 
	u.state, COUNT(l.user_id) AS freq
FROM logs l
  JOIN users u 
  ON l.user_id = u.id
GROUP BY u.state
ORDER BY freq DESC
LIMIT 2;
