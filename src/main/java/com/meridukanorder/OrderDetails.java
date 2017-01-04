package com.meridukanorder;

public class OrderDetails implements Comparable<OrderDetails>{

	int orderNumber;
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public double getPriceEach() {
		return priceEach;
	}
	public void setPriceEach(double priceEach) {
		this.priceEach = priceEach;
	}
	public int getQuantityOrdered() {
		return quantityOrdered;
	}
	public void setQuantityOrdered(int quantityOrdered) {
		this.quantityOrdered = quantityOrdered;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public short getOrderLineNumber() {
		return orderLineNumber;
	}
	public void setOrderLineNumber(short orderLineNumber) {
		this.orderLineNumber = orderLineNumber;
	}
	double priceEach;
	int quantityOrdered;
	String productCode;
	short orderLineNumber;
	
	@Override
	public int compareTo(OrderDetails o) {
		int comapareOrderNumber = ((OrderDetails) o).getOrderNumber();

		//ascending order
		return this.orderNumber - comapareOrderNumber;
	}
	

	

}
