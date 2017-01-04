%dw 1.0
%output application/java
---
payload map ((payload01 , indexOfPayload01) -> {
	customerName: payload01.customerName,
	contactFirstName: payload01.contactFirstName,
	contactLastName: payload01.contactLastName,
	phone: payload01.phone,
	addressLine1: payload01.addressLine1,
	addressLine2: payload01.addressLine2,
	city: payload01.city,
	state: payload01.state,
	postalCode: payload01.postalCode,
	country: payload01.country,
	creditLimit: payload01.creditLimit,
	salesRepEmployeeNumber: payload01.salesRepEmployeeNumber
})