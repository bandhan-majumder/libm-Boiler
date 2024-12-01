-- Create Database
CREATE DATABASE library;
USE library;

-- Categories Table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Authors Table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    nationality VARCHAR(50)
);

-- Readers Table
CREATE TABLE Readers (
    reader_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    membership_start_date DATE NOT NULL,
    membership_type ENUM('Regular', 'Premium') NOT NULL
);

-- Publishers Table
CREATE TABLE Publishers (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address TEXT,
    contact_email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Books Table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    category_id INT NOT NULL,
    publisher_id INT NOT NULL,
    published_year YEAR,
    total_copies INT DEFAULT 0,
    available_copies INT DEFAULT 0,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL,
    FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id) ON DELETE CASCADE
);

-- Book Issues Table
CREATE TABLE Book_Issues (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    reader_id INT NOT NULL,
    book_id INT NOT NULL,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE DEFAULT NULL,
    status ENUM('Issued', 'Returned', 'Overdue') NOT NULL,
    FOREIGN KEY (reader_id) REFERENCES Readers(reader_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);

-- Reviews Table
CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    reader_id INT NOT NULL,
    book_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    review_date DATE NOT NULL,
    FOREIGN KEY (reader_id) REFERENCES Readers(reader_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);

-- Authors Stats Table
CREATE TABLE Authors_Stats (
    stat_id INT AUTO_INCREMENT PRIMARY KEY,
    author_id INT NOT NULL,
    times_read INT DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE
);

-- Reader Activity Table
CREATE TABLE Reader_Activity (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    reader_id INT NOT NULL,
    books_read_count INT DEFAULT 0,
    last_read_date DATE,
    favorite_category_id INT DEFAULT NULL,
    favorite_author_id INT DEFAULT NULL,
    FOREIGN KEY (reader_id) REFERENCES Readers(reader_id) ON DELETE CASCADE,
    FOREIGN KEY (favorite_category_id) REFERENCES Categories(category_id) ON DELETE SET NULL,
    FOREIGN KEY (favorite_author_id) REFERENCES Authors(author_id) ON DELETE SET NULL
);

-- Fines Table
CREATE TABLE Fines (
    fine_id INT AUTO_INCREMENT PRIMARY KEY,
    issue_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_status ENUM('Paid', 'Pending') NOT NULL,
    imposed_date DATE NOT NULL,
    paid_date DATE DEFAULT NULL,
    FOREIGN KEY (issue_id) REFERENCES Book_Issues(issue_id) ON DELETE CASCADE
);
