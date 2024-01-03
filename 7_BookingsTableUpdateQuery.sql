DELETE FROM `littlelemondb`.`bookings` WHERE (`BookingID` = '6');
DELETE FROM `littlelemondb`.`bookings` WHERE (`BookingID` = '5');
UPDATE `littlelemondb`.`bookings` SET `TableNo` = '5', `BookingDate` = '2022-10-10' WHERE (`BookingID` = '1');
UPDATE `littlelemondb`.`bookings` SET `TableNo` = '3', `CustomerID` = '3', `BookingDate` = '2022-11-12' WHERE (`BookingID` = '2');
UPDATE `littlelemondb`.`bookings` SET `TableNo` = '2', `CustomerID` = '2', `BookingDate` = '2022-10-11' WHERE (`BookingID` = '3');
UPDATE `littlelemondb`.`bookings` SET `TableNo` = '2', `CustomerID` = '1', `BookingDate` = '2022-10-13' WHERE (`BookingID` = '4');
