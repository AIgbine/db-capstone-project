USE littlelemondb;
SELECT CustomerDetails.CustomerID, customerdetails.CustomerName AS FullName, Orders.OrderID, Orders.TotalCost AS Cost,
Menus.Name AS MenuName, Menus.Cuisine AS CourseName FROM Orders
INNER JOIN CustomerDetails
USING (CustomerID)
INNER JOIN menus
USING (MenuID)
INNER JOIN MenuItems
USING (ItemID)
WHERE Orders.TotalCost > 150
ORDER BY Cost ASC;