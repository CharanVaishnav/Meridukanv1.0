%dw 1.0
%output application/java
---
payload map ((payload01 , indexOfPayload01) -> {
	productCode: payload01.productCode,
	productName: payload01.productName,
	productLine: payload01.productLine,
	productScale: payload01.productScale,
	productVendor: payload01.productVendor,
	productDescription: payload01.productDescription,
	quantityInStock: payload01.quantityInStock,
	buyPrice: payload01.buyPrice,
	MSRP: payload01.MSRP
})