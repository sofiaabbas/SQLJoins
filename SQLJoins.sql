/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select products.name, categories.name from products 
inner join categories on products.categoryID = categories.categoryID 
where categories.name = "computers"; 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select products.name, products.price, reviews.rating from products 
inner join reviews on products.ProductID = reviews.ProductID 
where reviews.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select concat(employees.FirstName, " ", employees.LastName) as employee, 
sum(sales.Quantity) as total from employees 
inner join sales on employees.EmployeeID = sales.EmployeeID 
group by employees.EmployeeID order by total desc limit 5;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as department, c.name as category 
from categories as c inner join departments as d on d.DepartmentID = c.DepartmentID 
where c.name = "Appliances" or c.name = "Games";
/* joins: find the product name, total # sold, and total price sold,
for Eagles: Hotel California --You may need to use SUM() */
select p.name as product, 
sum(s.Quantity) as TotalQuantity, 
sum(s.PricePerUnit * s.Quantity) as TotalValue from products as p 
inner join sales as s on p.ProductID = s.ProductID 
where p.name = 'Eagles: Hotel California';
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name as product, r.reviewer, r.rating, r.comment from reviews as r 
inner join products as p on p.ProductID = r.ProductID 
where p.name = "Visio TV" order by r.rating limit 1;
-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */