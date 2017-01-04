%dw 1.0
%output application/java
---
payload.Products.*Product map ((product , indexOfProduct) -> {
	productCode: product.productCode,
	productName: product.productName,
	productLine: product.productLine,
	productScale: product.productScale as :string,
	productVendor: product.productVendor,
	productDescription: product.productDescription,
	quantityInStock: product.quantityInStock as :string,
	buyPrice: product.buyPrice as :string,
	MSRP: product.MSRP as :string
})