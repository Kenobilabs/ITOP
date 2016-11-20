({
	doInit : function(component, event, helper) {
		//initialize location options
        var action = component.get("c.getLocationsForDropdown");
        action.setCallback(this, function(a){
            component.set("v.Locations",a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    
    updateTicketObjects : function(component, event, helper){
        var inputLocation = component.find("LocationSelect").get("v.value");
        var action = component.get("c.getTickets");
        action.setParams({locationName : inputLocation});
        action.setCallback(this, function(a){
            component.set("v.Tickets",a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    updateTicket : function(component, event, helper){
        
        
        var ticket = component.get("v.selectedTicket");
        var action = component.get("c.updateTicket");
        action.setParams({
            inputTicket : ticket
        });
        $A.enqueueAction(action);
        component.set("v.selectedTicket",null);
    }
})