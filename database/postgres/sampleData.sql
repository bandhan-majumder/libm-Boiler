-- Insert sample data into Categories
INSERT INTO Categories (name, description)
VALUES 
    ('Fiction', 'Fictional books and novels'),
    ('Science', 'Books on scientific topics'),
    ('History', 'Historical books and literature'),
    ('Technology', 'Books about technology and computing');

-- Insert sample data into Authors
INSERT INTO Authors (name, date_of_birth, nationality)
VALUES 
    ('George Orwell', '1903-06-25', 'British'),
    ('Isaac Newton', '1643-01-04', 'British'),
    ('Albert Einstein', '1879-03-14', 'German'),
    ('J.K. Rowling', '1965-07-31', 'British');

-- Insert sample data into Readers
INSERT INTO Readers (first_name, last_name, email, phone_number, membership_start_date, membership_type)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', '1234567890', '2023-01-01', 'Regular'),
    ('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '2022-12-15', 'Premium'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '1122334455', '2024-01-10', 'Regular'),
    ('Bob', 'Brown', 'bob.brown@example.com', '6677889900', '2023-11-20', 'Premium');

-- Insert sample data into Publishers
INSERT INTO Publishers (name, address, contact_email, phone_number)
VALUES 
    ('Penguin Books', '80 Strand, London, UK', 'info@penguinbooks.com', '4455667788'),
    ('Reilly Media', '1005 Gravenstein Hwy N, CA, USA', 'contact@oreilly.com', '5544332211');

-- Insert sample data into Books
INSERT INTO Books (title, author_id, category_id, publisher_id, published_year, total_copies, available_copies)
VALUES 
    ('1984', 1, 1, 1, 1949, 10, 8),
    ('Principia Mathematica', 2, 2, 2, 1687, 5, 5),
    ('Relativity: The Special and General Theory', 3, 2, 2, 1916, 7, 4),
    ('Harry Potter and the Sorcerers Stone', 4, 1, 1, 1997, 20, 15);

-- Insert sample data into Book_Issues
INSERT INTO Book_Issues (reader_id, book_id, issue_date, due_date, return_date, status)
VALUES 
    (1, 1, '2024-11-01', '2024-11-15', NULL, 'Issued'),
    (2, 3, '2024-10-20', '2024-11-04', '2024-11-02', 'Returned'),
    (3, 2, '2024-11-10', '2024-11-25', NULL, 'Issued');

-- Insert sample data into Reviews
INSERT INTO Reviews (reader_id, book_id, rating, comment, review_date)
VALUES 
    (1, 1, 5, 'An excellent read!', '2024-11-15'),
    (2, 3, 4, 'Very informative.', '2024-11-02'),
    (3, 2, 5, 'A masterpiece of science.', '2024-11-12');

-- Insert sample data into Authors_Stats
INSERT INTO Authors_Stats (author_id, times_read)
VALUES 
    (1, 100),
    (2, 50),
    (3, 75),
    (4, 120);

-- Insert sample data into Reader_Activity
INSERT INTO Reader_Activity (reader_id, books_read_count, last_read_date, favorite_category_id, favorite_author_id)
VALUES 
    (1, 10, '2024-11-15', 1, 1),
    (2, 5, '2024-11-02', 2, 3),
    (3, 8, '2024-11-12', 2, 2);

-- Insert sample data into Fines
INSERT INTO Fines (issue_id, amount, payment_status, imposed_date, paid_date)
VALUES 
    (1, 5.00, 'Pending', '2024-11-16', NULL),
    (2, 2.50, 'Paid', '2024-11-03', '2024-11-04');
