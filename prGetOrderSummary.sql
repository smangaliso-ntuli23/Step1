CREATE PROC prGetOrderSummary
ALTER PROC [Northwind].[prGetOrderSummary]
@JobTitle varchar(100) = NULL,
@FirstName varchar(100) = NULL,
@LastName varchar(100) = NULL,
@ShipperCompanyName varchar(100) = NULL,
@CustomerCompanyName varchar(100) = NULL,
@NumberOfOrders int = NULL,
@Date datetime,
@TotalFreightCost money = NULL,
@NumberOfDifferentProducts int = NULL,
@TotalOrderValue money = NULL
AS
SET NOCOUNT ON
BEGIN TRAN
SELECT JobTitle,FirstName,LastName,Shipper.CompanyName,Customer.CompanyName,OrderID,OrderDate,InventoryList,Total

FROM CustomerList,OrderList,InventoryList,Shipper

WHERE([@StartDate]=@StartDate) OR @StartDate IS NULL AND ([@EndDate]=@EndDate) OR @EndDate IS NULL AND ([@EmployeeID]=@EmployeeID) OR @EmployeeID IS NULL AND ([@CustomerID]=@CustomerID) OR @CustomerID IS NULL AND
COMMIT