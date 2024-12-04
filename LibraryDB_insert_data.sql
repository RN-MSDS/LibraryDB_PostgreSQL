/*
2 - INSERT SAMPLE DATA
*/

/*
Insert Books
*/

INSERT INTO Books (Title, Author, Country, PublishedYear)
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'American', 1925),
('Ulysses', 'James Joyce', 'Irish', 1922),
('In Search of Lost Time', 'Marcel Proust', 'French', 1913),
('One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Colombian', 1967),
('The Catcher in the Rye', 'J.D. Salinger', 'American', 1951);

/*
Insert Members
*/

INSERT INTO Members (Name, Email)
VALUES
('John Smith', 'johnsmith@gmail.com'),
('Jane Doe', 'janedoe@gmail.com');

--JoinDate -> will default to today's date

/*
Insert Borrow Records
*/

INSERT INTO BorrowRecords (MemberID, BookID, BorrowDate, ReturnDate)
VALUES
(1, 1, '2024-07-01', '2024-07-15'),
(2, 2, '2024-08-01', NULL);

--NULL -> indicates book hasn't been returned

