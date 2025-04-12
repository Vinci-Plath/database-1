-- insert sample data
INSERT INTO book_language (language_name, language_code) VALUES 
('English', 'en'), ('Spanish', 'es'), ('French', 'fr'), ('German', 'de');

INSERT INTO publisher (publisher_name, publisher_website) VALUES 
('Penguin Random House', 'https://www.penguinrandomhouse.com/'),
('HarperCollins', 'https://www.harpercollins.com/'),
('Penguin Classics', 'https://www.penguinclassics.com/'),
('Oxford Publishers', 'https://www.oxfordpulishers.com/'),
('Simon & Schuster', 'https://www.simonandschuster.com/');

INSERT INTO country (country_name, country_code) VALUES 
('Tanzania', 'TZ'), ('United Kingdom', 'UK'), ('Kenya', 'KE'), ('Uganda' , 'UG'), ('Australia', 'AU');

INSERT INTO address_status (address_status) VALUES 
('Current'), ('Previous'), ('Billing'), ('Shipping');

INSERT INTO shipping_method (method_name, cost) VALUES 
('Standard Shipping', 5.99), ('Express Shipping', 12.99), ('Overnight Shipping', 24.99);

INSERT INTO order_status (status_value) VALUES 
('Pending'), ('Processing'), ('Shipped'), ('Delivered'), ('Cancelled');

-- Insert authors
INSERT INTO author (first_name, last_name, birth_date) VALUES 
('Jane', 'Austen', '1775-12-16'),
('J.K.', 'Rowling', '1965-07-31'),
('Emily', 'Dicknison', '1830-12-10'),
('Maya.', 'Angelou', '1926-04-04'),
('Sylvia', 'Plath', '1932-10-27'),
('Mary', 'Shelley', '1797-08-30'),
('Virginia', 'Woolf', '1882-01-25');

-- Insert books
INSERT INTO book (title, isbn, num_pages, publication_date, language_id, publisher_id, price, stock_quantity) VALUES 
('I Know Why The Caged Bird Sings', '9780451524953', 288, '1950-06-08', 1, 1, 9.99, 50),
('Wuthering Heights', '9780747532693', 300, '1987-06-26', 1, 2, 12.99, 500),
('Pride and Prejudice', '9780747532734', 432, '1996-06-06', 1, 2, 12.99, 100),
('Frankenstein', '9780747532787', 280, '1886-08-02', 1, 2, 12.99, 300),
('The Bell Jar', '9780747532751', 288, '1997-03-15', 1, 2, 12.99, 400),
('To the Lighthouse', '9780747532766', 224, '1922-08-06', 1, 2, 12.99, 1000),
('The Shining', '9780307743682', 447, '1937-01-28', 1, 3, 14.99, 75);

-- Link books to authors

INSERT INTO book_author (book_id, author_id) 
VALUES 
    (1, 4),  -- Maya Angelou - I Know Why the Caged Bird Sings
    (2, 3),  -- Emily Dickinson - Wuthering Heights
    (3, 1),  -- Jane Austen - Pride and Prejudice
    (4, 6),  -- Mary Shelley - Frankenstein
    (5, 5),  -- Sylvia Plath - The Bell Jar
    (6, 7),  -- Virginia Woolf - To the Lighthouse
    (7, 2);  -- J.K. Rowling - The Shining



-- Insert customers
INSERT INTO customer (first_name, last_name, email, phone) VALUES 
('Jane', 'Hemedi', 'janehemedi@gmail.com', '555-987-6543'),
('Bahati', 'Kahindi', 'bahatikahindi@gmail.com', '555-987-6543'),
('Eileen', 'Esendi', 'eileenesendi@example.com', '555-987-6543'),
('Lucy', 'Kiage', 'lucykiage@gmail.com', '555-987-6543'),
('Vinci', 'Plath', 'vinciplath@gmail.com', '555-987-6543'),
('Cuba', 'Kafka', 'cubakafka@gmail.com', '555-987-6543'),
('Jimmy', 'Njoroge', 'jane.smith@gmail.com', '555-987-6543');



-- Insert addresses
INSERT INTO address (street_number, street_name, city, country_id, postal_code) VALUES 
('123', 'Maweni', 'Malindi', 1, '10002'),
('456', 'Main St', 'New York', 2, '10003'),
('789', 'Eastleigh', 'Nairobi', 1, '10001'),
('456', 'Oak Ave', 'London', 2, 'SW1A 1AA');


-- Link customers to addresses
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES 
(1, 1, 1), (2, 2, 1);

-- Create orders
INSERT INTO cust_order (customer_id, shipping_method_id, dest_address_id) VALUES 
(1, 1, 1), (2, 2, 2);

-- Add order lines
INSERT INTO order_line (order_id, book_id, price, quantity) VALUES 
(1, 1, 9.99, 1), (1, 2, 12.99, 2),
(2, 3, 14.99, 1);

-- Add order history
INSERT INTO order_history (order_id, status_id) VALUES 
(1, 1), (2, 1);

