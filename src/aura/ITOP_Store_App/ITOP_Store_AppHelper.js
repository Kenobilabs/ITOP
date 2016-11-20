({
	updateTicketObjects : function(component, event, helper){
        var inputLocation = component.find("LocationSelect").get("v.value");
        component.set("v.testInput", inputLocation);
        var action = component.get("c.getTickets");
        action.setParams({location : inputLocation});
        action.setCallback(this, function(a){
            component.set("v.Tickets",a.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})