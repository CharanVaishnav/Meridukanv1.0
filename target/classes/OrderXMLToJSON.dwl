%dw 1.0
%output application/java
---
payload.Orders.*Order map ((order , indexOfOrder) -> {
	orderDate: order.orderDate as :string,
	requiredDate: order.requiredDate as :string,
	shippedDate: order.shippedDate as :string,
	status: order.status,
	comments: order.comments,
	customerNumber: order.customerNumber as :string,
	orderDetails: order.orderDetails.*orderDetail map ((orderDetail , indexOfOrderDetail) -> {
		productCode: orderDetail.productCode,
		quantityOrdered: orderDetail.quantityOrdered as :string,
		priceEach: orderDetail.priceEach as :string,
		orderLineNumber: orderDetail.orderLineNumber as :string
	})
})