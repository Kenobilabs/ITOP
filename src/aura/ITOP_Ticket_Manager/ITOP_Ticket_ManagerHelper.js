({
	updateOtherLocations : function(component) {
		var currentLocation = component.get("v.location");
        var action = component.get("c.fetchOtherLocations");
        action.setParams({
            inputLocation : currentLocation
        });
        action.setCallback(this, function(r){
            component.set("v.otherLocations",r.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})