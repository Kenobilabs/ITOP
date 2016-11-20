({
	select : function(component, event, helper) {
        var element = component.find('container');
		$A.util.toggleClass(element,'selected-container');
        
	},
    changeNotes : function(component, event, helper){
      	//get value in thing
      	//update ticket value
      	var noteContent = component.find('comments').get("v.value");
        var ticketId = component.get("v.input.Id");
        var action = component.get("c.updateTicketNotes");
        action.setParams({
            inputId : ticketId,
            inputNotes : noteContent
        });
        action.setCallback(this, function(r){
            component.set("v.input",r.getReturnValue());
        });
        $A.enqueueAction(action);
    },

    openTicket : function(component, event, helper){
        var ticketId = component.get("v.input.Id");
        var action = component.get("c.openCurrentTicket");
        action.setParams({
            inputId : ticketId,
        });
        action.setCallback(this, function(r){
            component.set("v.input",r.getReturnValue());
        });
        $A.enqueueAction(action);
    }    ,
    
    closeTicket : function(component, event, helper){
    	var ticketId = component.get("v.input.Id");
        var action = component.get("c.closeCurrentTicket");
        action.setParams({
            inputId : ticketId,
        });
        action.setCallback(this, function(r){
            component.set("v.input",r.getReturnValue());
        });
        $A.enqueueAction(action);
        var ticketContainer = component.find('container');
        $A.util.addClass(component, 'hidden-full');
                component.set("v.destination","newValue");

	},
    
    transferTicket : function(component, event, helper){
        var inputLocationName = component.find('transferLocation').get("v.value");
        component.set("v.test",inputLocationName);
        var inputTicketId = component.get("v.input.Id");
        var action = component.get("c.transferCurrentTicket");
        action.setParams({
            ticketId : inputTicketId,
            locationName : inputLocationName
        });
        
        $A.enqueueAction(action);
        component.set("v.destination","newValue");
        //$A.util.addClass(component, 'hidden-full');
    }
    
})