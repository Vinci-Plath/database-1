-- Create database users with appropriate privileges
CREATE USER 'lib_admin'@'localhost' IDENTIFIED BY 'adminlib_87';
GRANT ALL PRIVILEGES ON LIBRARY.* TO 'lib_admin'@'localhost';

CREATE USER 'lib_staff'@'localhost' IDENTIFIED BY 'stafflib_91';
GRANT SELECT, INSERT, UPDATE ON LIBRARY.* TO 'lib_staff'@'localhost';

CREATE USER 'lib_customer'@'localhost' IDENTIFIED BY 'customerlib_25';
GRANT SELECT ON LIBRARY.book TO 'lib_customer'@'localhost';
GRANT SELECT ON LIBRARY.author TO 'lib_customer'@'localhost';
GRANT SELECT ON LIBRARY.customer TO 'lib_customer'@'localhost';  -- Read-only access
GRANT SELECT ON LIBRARY.address TO 'lib_customer'@'localhost';   -- Read-only
GRANT SELECT ON LIBRARY.order_line TO 'lib_customer'@'localhost';
GRANT SELECT ON LIBRARY.order_history TO 'lib_customer'@'localhost';


-- Revoking the priviliges granted to the current users and dropping them in order to use roles and assign role to users instead
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'lib_admin'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'lib_staff'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'lib_customer'@'localhost';

DROP USER 'lib_admin'@'localhost';
DROP USER 'lib_staff'@'localhost';
DROP USER 'lib_customer'@'localhost';

-- Creating roles
CREATE ROLE 'admin';
CREATE ROLE 'staff';
CREATE ROLE 'customer';

-- Creating users

-- Admins
CREATE USER 'adminmaria'@'localhost' IDENTIFIED BY 'MariaAdmin@123';
CREATE USER 'adminpaul'@'localhost' IDENTIFIED BY 'PaulAdmin@123';
-- Staff
CREATE USER 'staffkevin'@'localhost' IDENTIFIED BY 'KevinStaff@123';
CREATE USER 'staffamina'@'localhost' IDENTIFIED BY 'AminaStaff@123';
CREATE USER 'staffbrian'@'localhost' IDENTIFIED BY 'BrianStaff@123';
-- Customers
CREATE USER 'janehemedi'@'localhost' IDENTIFIED BY 'Jane@123';
CREATE USER 'bahatikahindi'@'localhost' IDENTIFIED BY 'Bahati@123';
CREATE USER 'eileenesendi'@'localhost' IDENTIFIED BY 'Eileen@123';
CREATE USER 'lucykiage'@'localhost' IDENTIFIED BY 'Lucy@123';
CREATE USER 'vinciplath'@'localhost' IDENTIFIED BY 'Vinci@123';
CREATE USER 'cubakafka'@'localhost' IDENTIFIED BY 'Cuba@123';
CREATE USER 'jimmynjoroge'@'localhost' IDENTIFIED BY 'Jimmy@123';

-- Granting privileges to roles

-- Admins
GRANT ALL PRIVILEGES ON library.* TO admin;
-- Staff
GRANT SELECT, INSERT, UPDATE ON library.* TO staff;
-- Customers
GRANT SELECT ON library.book TO customer;
GRANT SELECT ON library.book_author TO customer;
GRANT SELECT ON library.author TO customer;
GRANT SELECT ON library.book_language TO customer;
GRANT SELECT ON library.publisher TO customer;
GRANT SELECT ON library.shipping_method TO customer;
GRANT SELECT ON library.order_status TO customer;


-- Assigning roles
-- Admins
GRANT admin TO 'adminmaria'@'localhost';
GRANT admin TO 'adminpaul'@'localhost';
-- Staff
GRANT staff TO 'staffkevin'@'localhost';
GRANT staff TO 'staffamina'@'localhost';
GRANT staff TO 'staffbrian'@'localhost';
-- Customers
GRANT customer TO 'janehemedi'@'localhost';
GRANT customer TO 'bahatikahindi'@'localhost';
GRANT customer TO 'eileenesendi'@'localhost';
GRANT customer TO 'lucykiage'@'localhost';
GRANT customer TO 'vinciplath'@'localhost';
GRANT customer TO 'cubakafka'@'localhost';
GRANT customer TO 'jimmynjoroge'@'localhost';


-- Setting default roles for users
-- Admins
SET DEFAULT ROLE admin TO 'adminmaria'@'localhost';
SET DEFAULT ROLE admin TO 'adminpaul'@'localhost';
-- Staff
SET DEFAULT ROLE staff TO 'staffkevin'@'localhost';
SET DEFAULT ROLE staff TO 'staffamina'@'localhost';
SET DEFAULT ROLE staff TO 'staffbrian'@'localhost';
-- Customers
SET DEFAULT ROLE customer TO 'janehemedi'@'localhost';
SET DEFAULT ROLE customer TO 'bahatikahindi'@'localhost';
SET DEFAULT ROLE customer TO 'eileenesendi'@'localhost';
SET DEFAULT ROLE customer TO 'lucykiage'@'localhost';
SET DEFAULT ROLE customer TO 'vinciplath'@'localhost';
SET DEFAULT ROLE customer TO 'cubakafka'@'localhost';
SET DEFAULT ROLE customer TO 'jimmynjoroge'@'localhost';










