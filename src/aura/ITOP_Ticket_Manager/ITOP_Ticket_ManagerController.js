({
	doInit : function(component, event, helper) {
		var fetchLocations = component.get("c.fetchAllLocations");
        fetchLocations.setCallback(this, function(a){
            component.set("v.locations",a.getReturnValue());
        });
        $A.enqueueAction(fetchLocations);
    },
    changeLocation : function(component, event, helper){
        var selection = component.find("locationSelection").get("v.value");
        var fetchTickets = component.get("c.fetchTicketsForLocation");
        fetchTickets.setParams({
           location : selection
        });
        fetchTickets.setCallback(this, function(r){
           component.set("v.tickets",r.getReturnValue()); 
        });
        $A.enqueueAction(fetchTickets);
        //get location details
        var fetchLocation = component.get("c.getLocation");
        fetchLocation.setParams({
            inputName : selection
        });
        fetchLocation.setCallback(this, function(a){
            component.set("v.location",a.getReturnValue());
        });
        $A.enqueueAction(fetchLocation);
        
        var warning = component.find('warning');
        var table = component.find('locationTable');
        helper.updateOtherLocations(component);
        $A.util.addClass(warning, 'hidden');
        $A.util.removeClass(table, 'hidden');
    },
    
    subtractEmployee : function(component, event, helper){
        var location = component.get("v.location.Id");
        var action = component.get("c.subtractEmployeeFromLocation");
        action.setParams({
            inputLocation : location
        });
        action.setCallback(this, function(r){
            component.set("v.location", r.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    addEmployee : function(component, event, helper){
        var location = component.get("v.location.Id");
        var action = component.get("c.addEmployeeToLocation");
        action.setParams({
            inputLocation : location
        });
        action.setCallback(this, function(r){
            component.set("v.location", r.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    toggleOpen : function(component, event, helper){
        var location = component.get("v.location.Id");
        var action = component.get("c.toggleOpenAtLocation");
        action.setParams({
            inputLocation : location
        });
        action.setCallback(this, function(r){
            component.set("v.location", r.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    showTop : function(component, event, helper){
        var topArea = component.find('topHeader');
        $A.util.removeClass(topArea, 'shrink');
    },
    hideTop : function(component, event, helper){
        var topArea = component.find('topHeader');
        $A.util.addClass(topArea, 'shrink');
    },
    updateTickets : function(component, event, helper){
        component.set("v.triggerValue",null);
        var selection = component.find("locationSelection").get("v.value");
        var fetchTickets = component.get("c.fetchTicketsForLocation");
        fetchTickets.setParams({
           location : selection
        });
        fetchTickets.setCallback(this, function(r){
           component.set("v.tickets",r.getReturnValue()); 
        });
        $A.enqueueAction(fetchTickets);
    }
    
    
    
    
})