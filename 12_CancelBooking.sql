CREATE PROCEDURE `CancelBooking`(IN bookingid INT)
BEGIN
DELETE FROM `littlelemondb`.`bookings`
WHERE BookingID = bookingid;
SELECT CONCAT("Booking ", bookingid, " cancelled") AS "Confirmation";
END