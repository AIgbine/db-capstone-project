USE littlelemondb;
SELECT Name AS MenuName
FROM menus
WHERE MenuID = ANY (SELECT MenuID FROM Orders WHERE Quantity > 2);