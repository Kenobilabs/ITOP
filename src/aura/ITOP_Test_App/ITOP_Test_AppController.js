({
    doInit : function(component, event, helper){
        
        //initialize locations, devices, product lines, 
        var getPrimaryOptions = component.get("c.getPrimaryOptions");
        var getSecondaryOptions = component.get("c.getSecondaryOptions");
        var getTypes = component.get("c.getDeviceTypes");
        var getAllLocations = component.get("c.getAllLocations");
        getPrimaryOptions.setCallback(this, function(primaryReturn){
            component.set("v.primaryOptions",primaryReturn.getReturnValue());
        });
        getSecondaryOptions.setCallback(this, function(secondaryReturn){
            component.set("v.secondaryOptions",secondaryReturn.getReturnValue());
        });
        getTypes.setCallback(this, function(deviceReturn){
            component.set("v.deviceTypes",deviceReturn.getReturnValue());
        });
        getAllLocations.setCallback(this, function(locations){
            component.set("v.allLocations", locations.getReturnValue());
            component.set("v.locations",locations.getReturnValue());
        })
        $A.enqueueAction(getPrimaryOptions);
        $A.enqueueAction(getSecondaryOptions);
        $A.enqueueAction(getTypes);
        $A.enqueueAction(getAllLocations);
    },
    
    primaryChange : function(component, event, helper){
    	var primary = component.find('primaryCarousel');
        var secondary = component.find('secondaryCarousel');
        helper.hide(primary);
        helper.show(secondary);
        helper.updateLocations(component);
	},
    secondaryChange : function(component, event, helper){
    	var secondary = component.find('secondaryCarousel');
        var types = component.find('typeCarousel');
        helper.hide(secondary);
        helper.show(types);
	},
    typeChange : function(component, event, helper){
    	var types = component.find('typeCarousel');
        var locationsArea = component.find('locationCarousel');
        helper.hide(types);
        helper.show(locationsArea);
        component.set("v.ticketQuestion","Which location would you like to send your ticket to?");
	},
    locationChange : function(component, event, helper){
    	var selections = component.find('ticketSelections');
        var summary = component.find('ticketSummary');
        helper.hideFull(selections);
        helper.show(summary);
	},
    
    resetTicket : function(component, event, helper){
        helper.resetTicket(component, helper);
        helper.updateLocations(component);
    },
    
    submit : function(component, event ,helper){
        helper.updateLocations(component);


        var iprimary = component.get('v.selectedPrimaryOption');
        var isecondary = component.get('v.selectedSecondaryOption');
        var itype=component.get('v.selectedDeviceType');
        var ilocation = component.get('v.selectedLocation');
        var textDescription = component.find("descriptionInput").get("v.value");

        
        var action = component.get('c.submitTicket');
        action.setParams({
            primary : iprimary,
            secondary : isecondary,
            inputType : itype,
            location : ilocation,
            descriptionText : textDescription
        })
        
        $A.enqueueAction(action);    	
        helper.resetTicket(component, helper);
        var ticketButtons = component.find('createButton');
        var ticket = component.find('ticketBody');
        var locations = component.find('locations');
        helper.show(locations);
        helper.enable(ticketButtons);
        helper.hideFull(ticket);
	},
    
    createTicket : function(component, event, helper){
        var ticketButtons = component.find('createButton');
        var ticket = component.find('ticketBody');
        var locations = component.find('locations');
        helper.show(ticket);
        helper.hideFull(locations);
        helper.disable(ticketButtons);
    },
    
    cancel : function(component,event, helper){
        var ticketButtons = component.find('createButton');
        var ticket = component.find('ticketBody');
        var locations = component.find('locations');
        helper.hideFull(ticket);
        helper.show(locations);
        helper.enable(ticketButtons);
        helper.resetTicket(component,helper);
        helper.updateLocations(component);
    },
    refreshLocations : function(component, event, helper){
        var getAllLocations = component.get("c.getAllLocations");
		getAllLocations.setCallback(this, function(locations){
            component.set("v.allLocations", locations.getReturnValue());
            component.set("v.locations",locations.getReturnValue());
        });
		$A.enqueueAction(getAllLocations);
    }
   
    
    
    
    
    
    
    
    
    
    
    
    
})