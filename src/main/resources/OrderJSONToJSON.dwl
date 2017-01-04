%dw 1.0
%output application/java
---
payload map ((payload01 , indexOfPayload01) -> {
	orderDate: payload01.orderDate,
	requiredDate: payload01.requiredDate,
	shippedDate: payload01.shippedDate,
	status: payload01.status,
	comments: payload01.comments,
	customerNumber: payload01.customerNumber,
	orderDetails: payload01.orderDetails map ((orderDetail , indexOfOrderDetail) -> {
		productCode: orderDetail.productCode,
		quantityOrdered: orderDetail.quantityOrdered,
		priceEach: orderDetail.priceEach,
		orderLineNumber: orderDetail.orderLineNumber
	})
})