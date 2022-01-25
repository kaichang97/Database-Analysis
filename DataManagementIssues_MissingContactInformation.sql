SELECT TSCustomers.CustomerCode, TSCustomers.CustomerName FROM TSCustomers
LEFT JOIN TSCustomerPhone
ON TSCustomers.CustomerCode = TSCustomerPhone.CustomerCode
WHERE TSCustomerPhone.CustomerPhone IS NULL;

SELECT TSCustomers.CustomerCode, TSCustomers.CustomerName FROM TSCustomers
LEFT JOIN TSCustomerAddress
ON TSCustomers.CustomerCode = TSCustomerAddress.CustomerCode
WHERE TSCustomerAddress.CustomerAddress IS NULL;
