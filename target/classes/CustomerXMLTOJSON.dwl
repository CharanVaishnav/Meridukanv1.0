%dw 1.0
%output application/java
---
payload.Customers.*Customer map ((customer , indexOfCustomer) -> {
	customerName: customer.customerName,
	contactFirstName: customer.contactFirstName,
	contactLastName: customer.contactLastName,
	phone: customer.phone,
	addressLine1: customer.addressLine1,
	addressLine2: customer.addressLine2,
	city: customer.city,
	state: customer.state,
	postalCode: customer.postalCode,
	country: customer.country,
	creditLimit: customer.creditLimit,
	salesRepEmployeeNumber: customer.salesRepEmployeeNumber
})