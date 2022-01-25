SELECT DISTINCT TSCustomerAddress.CustomerName, TSCustomerAddress.CompanyID
FROM TSCustomerAddress
WHERE TSCustomerAddress.CustomerName LIKE "%?%";

SELECT DISTINCT TSCustomers.CustomerCode, TSCustomers.CustomerName, TSCustomers.CompanyID
FROM TSCustomers
WHERE TSCustomers.CustomerName LIKE "%?%";

SELECT DISTINCT TSCustomerPhone.CustomerName, TSCustomerPhone.CompanyID
FROM TSCustomerPhone
WHERE TSCustomerPhone.CustomerName LIKE "%?%";