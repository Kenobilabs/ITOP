({
	doInit : function(component, event, helper) {
		var action = component.get("c.getDeviceTypes");
        var objects = component.find("objects");
        action.setCallback(this, function(a){
            
            
            
            
            
			component.set("v.objects",a.getReturnValue());
        });
        $A.enqueueAction(action);
	}
    
})