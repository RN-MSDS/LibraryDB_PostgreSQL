/*
Library Database

PostgreSQL Project by Ryan Navarro, BSN, RN, CPAN, CCRN Alumnus

Tables:
Books -> stores details of books in library
Members -> stores information about library members
BorrowRecords -> track which members borrowed which books
*/

/*
1 - CREATE TABLES
*/

/*
Books Table
*/

CREATE TABLE Books(
	BookID SERIAL PRIMARY KEY,
	Title VARCHAR(255) NOT NULL,
	Author VARCHAR(255) NOT NULL,
	Country VARCHAR(100),
	PublishedYear INT CHECK (PublishedYear >=0)
);

--SERIAL -> automatically generates unique IDs
--CHECK (PublishedYear >= 0) -> ensure year is non-negative

/*
Members Table
*/

CREATE TABLE Members(
	MemberID SERIAL PRIMARY KEY,
	Name VARCHAR(255) NOT NULL,
	Email VARCHAR(255) UNIQUE,
	JoinDate DATE NOT NULL DEFAULT CURRENT_DATE
);

--DEFAULT CURRENT_DATE -> automatially sets join date to today's date if not provided

/*
BorrowRecords Table
*/

CREATE TABLE BorrowRecords(
	RecordID SERIAL PRIMARY KEY,
	MemberID INT REFERENCES Members(MemberID) ON DELETE CASCADE,
	BookID INT REFERENCES Books(BookID) ON DELETE CASCADE,
	BorrowDate DATE NOT NULL DEFAULT CURRENT_DATE,
	ReturnDate DATE
);

--ON DELETE CASCADE -> if book or member deleted, their borrow records will be deleted too
--DEFAULT CURRENT_DATE -> automatically sets borrow date to today's date

