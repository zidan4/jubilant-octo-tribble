
CREATE TABLE IF NOT EXISTS connection_test (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(100) NOT NULL
);

INSERT INTO connection_test (message)
SELECT 'VS Code connection works'
WHERE NOT EXISTS (
    SELECT 1 FROM connection_test
    WHERE message = 'VS Code connection works'
);

SELECT * FROM connection_test;
