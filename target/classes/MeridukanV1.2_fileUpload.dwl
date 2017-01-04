%dw 1.0
%output application/json skipNullOn="elements"
---
{
	productCode: payload[0].column_1,
	productName: payload[0].column_2,
	productLine: payload[0].column_3,
	productScale: payload[0].column_4,
	productVendor: payload[0].column_5,
	productDescription: payload[0].column_6,
	quantityInStock: payload[0].column_7,
	buyPrice:payload[0].column_8,	
	MSRP:payload[0].column_9	
	
} when recordVars.Code=="Product"
otherwise 

{
	customerName : payload[0].column_1,
contactLastName : payload[0].column_2,
contactFirstName : payload[0].column_3,
phone : payload[0].column_4,
addressLine1 :payload[0].column_5,
addressLine2 :payload[0].column_6,
city :payload[0].column_7,
state :payload[0].column_8,
postalCode :payload[0].column_9,
country :payload[0].column_10,
creditLimit :payload[0].column_11
} when recordVars.Code=="Customer"
otherwise
 {
 	"Note":"Valid Inputs are Products or Customers"
 }
 
