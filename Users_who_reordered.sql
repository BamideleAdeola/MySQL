
-- 3. Which of our users have re-ordered?

Select user_id, count(*) 
from logs
WHERE log_subject LIKE 'pla%'
Group by log_subject
HAVING count(*) > 1;

SELECT * 
FROM logs;
-- Reordered users
