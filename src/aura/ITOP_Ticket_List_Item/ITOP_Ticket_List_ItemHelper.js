({
	updateTickets : function(component) {
		component.set("v.input.Status__c","Closed");
    	var action = component.get("c.updateTicket");
        $A.enqueueAction(action);
	}
})