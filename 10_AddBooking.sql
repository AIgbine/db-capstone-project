CREATE DEFINER=`admin1`@`%` PROCEDURE `AddBooking`(IN bookingid INT, tableno INT, customerid INT, bookingdate DATE, employeeid INT)
BEGIN
INSERT INTO Bookings(BookingID, TableNo, CustomerID, BookingDate, EmployeeID)
VALUES(bookingid, tableno, customerid, bookingdate, employeeid);
SELECT "New booking added" AS "Confirmation";
END