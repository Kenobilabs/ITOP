({
	select : function(component, event, helper) {
        var inputObject = component.get("v.object");
        component.set("v.selectionDestination",inputObject);
	},
    
    toggleDescriptionView : function(component, event, helper){
        var image = component.find('ticketObjectImage');
        var description = component.find('ticketObjectDescription');
        $A.util.toggleClass(image,"ticket-hide-image");
        $A.util.toggleClass(description, "expanded-description");
    }
    
    
})