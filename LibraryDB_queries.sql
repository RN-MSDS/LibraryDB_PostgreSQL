/*
3 - QUERY THE DATABASE
*/

/*
Retrieve All Books
*/

SELECT * FROM Books;

/*
Find Borrowed Books
*/

SELECT b.Title, m.Name, br.BorrowDate, br.ReturnDate
FROM BorrowRecords br
JOIN Books b ON br.BookID = b.BookID
JOIN Members m ON br.MemberID = m.MemberID
WHERE br.ReturnDate IS NULL;

/*
Count Books by Genre
*/

SELECT Country, COUNT(*) AS BookCount
FROM Books
GROUP BY Country;

/*
List Members Who Borrowed Specific Book
*/

SELECT m.Name, m.Email
FROM BorrowRecords br
JOIN Members m ON br.MemberID = m.MemberID
WHERE br.BookID = 1;

--1 -> replaced with desired BookID
