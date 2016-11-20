({
		doInit : function(component, event, helper) {
		var action = component.get("c.getDeviceTypes");
        action.setCallback(this, function(a){

			component.set("v.ticketObjects",a.getReturnValue());
        });
        $A.enqueueAction(action);
	}
    
})