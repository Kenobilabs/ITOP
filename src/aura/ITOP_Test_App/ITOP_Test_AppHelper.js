({
    updateLocations : function(component){
        var inputPrimary = component.get("v.selectedPrimaryOption");
        var action = component.get("c.getLocations");
        action.setParams({
            primary : inputPrimary
        })
        action.setCallback(this, function(r){
            component.set("v.locations", r.getReturnValue());
        })
        $A.enqueueAction(action);
    },
    
    resetTicket : function(component, helper){
        var ticketSelections = component.find('ticketSelections');
        var ticketSummary = component.find('ticketSummary');
        var primary = component.find('primaryCarousel');
        var secondary = component.find('secondaryCarousel');
        var types = component.find('typeCarousel');
        var location = component.find('locationCarousel');
        var allLocations = component.get("v.allLocations");
        component.set("v.selectedPrimaryOption",null);
        component.set("v.selectedSecondaryOption",null);
        component.set("v.selectedDeviceType",null);
        component.set("v.selectedLocation",null);
        component.set("v.otherDestination",null);
        component.set("v.locations",allLocations);
        component.set("v.ticketDescription",null);
        helper.hideFull(ticketSummary);
        helper.show(ticketSelections);
        helper.show(primary);
        helper.hide(secondary);
        helper.hide(types);
        helper.hide(location);
        component.set("v.ticketQuestion",'What can we help you with?');
    }  ,  
    
    
    
    hide : function(element){
        $A.util.addClass(element, 'hidden');
    },
    show : function(element){
        $A.util.removeClass(element, 'hidden');
        $A.util.removeClass(element, 'hidden-invisible');
    },
    hideFull : function(element){
      	$A.util.addClass(element, 'hidden-invisible');  
    },
    disable : function(element){
        $A.util.addClass(element, 'disabled');
    },
    enable : function(element){
        $A.util.removeClass(element, 'disabled');
    }
    
})