CREATE DATABASE IF NOT EXISTS transactions;
USE transactions;
CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY_KEY,
    amount INT,
    description VARCHAR(255)
);
CREATE USER IF NOT EXISTS 'expense'@'%' identified by 'ExpenseApp@1';
GRANT ALL ON transactions.* TO 'expense'@'%';
FLUSH PRIVILEGES;
