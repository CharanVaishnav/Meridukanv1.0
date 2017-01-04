package com.meridukanorder;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractTransformer;

public class OrderSortTransformer extends AbstractTransformer{
	
	@Override
	protected Object doTransform(Object src, String enc) throws TransformerException {
		
		OrderArray ord =  (OrderArray)src;
		ArrayList<Order> Orders = (ArrayList<Order>) (ord.getOrders());
		Collections.sort(Orders);
		return Orders;
	}
}
