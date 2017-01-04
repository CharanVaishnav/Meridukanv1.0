package com.meridukanorder;

import java.util.ArrayList;
import java.util.Collections;
import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;

public class OrderDetailsSortTransformer extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding) throws TransformerException {

		OrderDetailsArray ordarray = (OrderDetailsArray) message.getPayload();
		ArrayList<OrderDetails> ordlist = (ArrayList<OrderDetails>) ordarray.getOrderdetails();
		Collections.sort(ordlist);
		return ordlist;
	}
}
