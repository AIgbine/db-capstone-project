USE LittleLemonDB;
# Insert query to populate "MenuItems" table is:
#*******************************************************#

INSERT INTO MenuItems (ItemID,Type)
VALUES
(1,'Starters'),
(2,'Starters'),
(3,'Starters'),
(4,'Starters'),
(5,'Starters'),
(6,'Starters'),
(7,'Main Courses'),
(8,'Main Courses'),
(9,'Main Courses'),
(10,'Desserts'),
(11,'Desserts'),
(12,'Desserts'),
(13,'Main Courses');

#*******************************************************#
# Insert query to populate "Menu" table is:
#*******************************************************#

INSERT INTO Menus (MenuID, Name, ItemID,Cuisine)
VALUES
(1, 'Olives',1, 'Greek'),
(2, 'Flatbread',7, 'Greek'),
(3, 'Minestrone',10, 'Greek'),
(4, 'Tomato bread',13, 'Greek'),
(5, 'Falafel',3, 'Italian'),
(6, 'Hummus',9, 'Italian'),
(7, 'Greek salad',12, 'Italian'),
(8, 'Bean soup',8, 'Italian'),
(9, 'Pizza',5, 'Turkish'),
(10, 'Greek yoghurt',4, 'Turkish'),
(11, 'Ice cream',11, 'Turkish'),
(12, 'Cheesecake',6, 'Turkish'),
(13, 'Kabasa', 2, 'Turkish');

#*******************************************************#
# Insert query to populate "StaffInformation" table:
#*******************************************************#

INSERT INTO StaffInformation (EmployeeID, Name, Role, Address, ContactNumber, Email, AnnualSalary)
VALUES
(01,'Mario Gollini','Manager','724, Parsley Lane, Old Town, Chicago, IL',351258074,'Mario.g@littlelemon.com','$70,000'),
(02,'Adrian Gollini','Assistant Manager','334, Dill Square, Lincoln Park, Chicago, IL',351474048,'Adrian.g@littlelemon.com','$65,000'),
(03,'Giorgos Dioudis','Head Chef','879 Sage Street, West Loop, Chicago, IL',351970582,'Giorgos.d@littlelemon.com','$50,000'),
(04,'Fatma Kaya','Assistant Chef','132  Bay Lane, Chicago, IL',351963569,'Fatma.k@littlelemon.com','$45,000'),
(05,'Elena Salvai','Head Waiter','989 Thyme Square, EdgeWater, Chicago, IL',351074198,'Elena.s@littlelemon.com','$40,000'),
(06,'John Millar','Receptionist','245 Dill Square, Lincoln Park, Chicago, IL',351584508,'John.m@littlelemon.com','$35,000');


#*******************************************************#
# Insert query to populate "CustomerDetails" table:
#*******************************************************#
INSERT INTO CustomerDetails (CustomerID, CustomerName, CustomerNumber, CustomerEmail)
VALUES
(01, 'Anna Iversen', 351258074, 'annaiverson@gmail.com'),
(02, 'Joakim Iversen', 351474048, 'joakimiversen@gmail.com'),
(03, 'Vanessa McCarthy', 351970582, 'vanessamccarthy@hotmail.com'),
(04, 'Marcos Romero', 351963569, 'marcosramos@ymail.com'),
(05, 'Hiroki Yamane', 351074198, 'hirokiyamane@hotmail.com'),
(06, 'Diana Pinto', 351584508, 'dianepinto@gmail.com');

#*******************************************************#
# Insert query to populate "Bookings" table is:
#*******************************************************#

INSERT INTO Bookings (BookingID, TableNo, CustomerID, 
 BookingDate, EmployeeID)
VALUES
(1,12, 1,'2023-03-01',1),
(2, 12, 2, '2023-04-01', 1),
(3, 19, 3, '2023-05-01', 3),
(4, 15, 4, '2023-06-01', 4),
(5, 5, 5, '2023-07-01', 2),
(6, 8, 6, '2023-08-01', 5);


#*******************************************************#
# Insert query to populate "OrderDelivery" table is:
#*******************************************************#

INSERT INTO OrderDelivery (DeliveryID, DeliveryDate, DeliveryStatus)
VALUES
(1,'2023-03-01', 'Delivered'),
(2, '2023-04-01', 'Cancelled'),
(3, '2023-05-01', 'Delivered'),
(4, '2023-06-01', 'Picked-up'),
(5, '2023-07-01', 'Cancelled');


#*******************************************************#
# Insert query to populate "Orders" table is:
#*******************************************************#

INSERT INTO Orders (OrderID, TableNo, MenuID, BookingID, Quantity, TotalCost, DeliveryID, CustomerID)
VALUES
(1, 12, 1, 1, 2, 86.00, 1, 2),
(2, 19, 2, 2, 5, 37.00, 2, 1),
(3, 15, 2, 3, 1, 370.00, 4, 3),
(4, 5, 3, 4, 3, 40.00, 3, 5),
(5, 8, 1, 5, 1, 430.00, 5, 6);


