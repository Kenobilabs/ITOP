({
	doInit : function(component, event, helper) {
        var action = component.get("c.getPrimaryOptions");
        action.setCallback(this, function(a) {
            component.set("v.primaryOptions",a.getReturnValue());
        });
        $A.enqueueAction(action);
        
        
        
	},
    
    doInitDeviceTypes : function(component, event, helper){
        var actionTwo = component.get("c.getDeviceTypes");
        actionTwo.setCallback(this, function(a){
            component.set("v.deviceTypes",a.getReturnValue());
        });
        $A.enqueueAction(actionTwo);
    },

    onPrimaryChange : function(component, event, helper){
        var selectedValue = component.find("primary").get("v.value");
		var action = component.get("c.getSecondaryOptions");
        action.setParams({
            primaryOption : selectedValue
        });
        action.setCallback(this, function(a) {
            component.set("v.secondaryOptions",a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    
    onDeviceTypeChange : function(component, event, helper){
    //update device manufacturers
    	var selectedType = component.find("deviceTypeSelection").get("v.value");
        var action = component.get("c.getDeviceManufacturers");
        var nameInput = component.find("deviceNameSelection");
        action.setParams({
            deviceType : selectedType
        });
        action.setCallback(this, function(a){
            component.set("v.deviceManufacturers", a.getReturnValue());
            component.set("v.deviceManufacturers.value","iPhone");
        });
        $A.enqueueAction(action);   
	},
    
    onDeviceManufacturerChange : function(component, event, helper){
    	var selectedManufacturer = component.find("deviceManufacturerSelection").get("v.value");
        var selectedType = component.find("deviceTypeSelection").get("v.value");
        var action = component.get("c.getDeviceNames");
        action.setParams({
            deviceManufacturer : selectedManufacturer,
            deviceType : selectedType
        });
        action.setCallback(this, function(a){
            
            component.set("v.deviceNames", a.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    
    onDeviceNameChange : function(component, event, helper){
        var selectedName = component.find("deviceNameSelection").get("v.value");
        var action = component.get("c.getDeviceModels");
        component.set("v.outputTest",selectedName);
        action.setParams({
            deviceName : selectedName
        });
        action.setCallback(this, function(a){
            
            component.set("v.deviceModels", a.getReturnValue());
        });
        $A.enqueueAction(action);
	}, 
    
    
    
    doInitTestDevice : function(component, event, helper){
        var action = component.get("c.getTestDevice");
        action.setCallback(this, function(a){
            component.set("v.test",a.getReturnValue());
        });
    	$A.enqueueAction(action);
	}
    
    
    
    
    
    
    
    
})