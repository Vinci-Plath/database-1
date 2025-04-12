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
