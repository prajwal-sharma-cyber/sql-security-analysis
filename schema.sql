CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    department TEXT NOT NULL
);

CREATE TABLE login_events (
    event_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    timestamp TEXT NOT NULL,
    success INTEGER NOT NULL,
    source_ip TEXT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO users VALUES
(1, 'alex', 'IT'),
(2, 'jordan', 'Finance'),
(3, 'sam', 'Operations');

INSERT INTO login_events VALUES
(1, 1, '2026-09-01 09:00', 1, '192.0.2.10'),
(2, 2, '2026-09-01 09:02', 0, '198.51.100.20'),
(3, 2, '2026-09-01 09:03', 0, '198.51.100.20'),
(4, 2, '2026-09-01 09:04', 0, '198.51.100.20'),
(5, 2, '2026-09-01 09:05', 1, '198.51.100.20');
