SELECT * FROM users;

SELECT source_ip, COUNT(*) AS failed_attempts
FROM login_events
WHERE success = 0
GROUP BY source_ip
ORDER BY failed_attempts DESC;

SELECT u.username, u.department, l.timestamp, l.success, l.source_ip
FROM users u
JOIN login_events l ON u.user_id = l.user_id
ORDER BY l.timestamp;

SELECT u.username, COUNT(*) AS failures
FROM users u
JOIN login_events l ON u.user_id = l.user_id
WHERE l.success = 0
GROUP BY u.username
HAVING COUNT(*) >= 3;
