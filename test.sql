-- Create a table named 'Employees' with some basic columns
USE TestDB;
GO

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    HireDate DATE,
    Department VARCHAR(50)
);
GO
