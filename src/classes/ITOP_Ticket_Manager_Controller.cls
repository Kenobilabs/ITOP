public with sharing class ITOP_Ticket_Manager_Controller {
    
    
    @AuraEnabled
    public static List<ITOP_Ticket__c> fetchTicketsForLocation(String location){
        List<ITOP_Ticket__c> tickets = [SELECT Id, 
                                        Name, 
                                        Request__r.Related_Primary__r.Name, 
                                        Request__r.Related_Secondary__r.Name,
                                        Request__r.Related_Device_Type__r.Name,
                                        Request__r.Description__c, 
                                        CreatedBy.Name, Notes__c, 
                                        isPriority__c, Status__c 
                                        FROM ITOP_Ticket__c 
                                       	WHERE Status__c!='Closed'
                                       	AND Location__r.Name =:location
                                       ORDER BY isPriority__c DESC, Name ASC];
        
        return tickets;
    }
    
    
    @AuraEnabled
    public static List<ITOP_Location__c> fetchAllLocations(){
        List<ITOP_Location__c> locations = [SELECT Id, Name, Employees__c, isOpen__c, status__c 
                                           	FROM ITOP_Location__c];
        return locations;
    }
    
    @AuraEnabled
    public static ITOP_Location__c getLocation(String inputName){
        List<ITOP_Location__c> locations = [SELECT Id, Name, Employees__c, isOpen__c, status__c FROM ITOP_Location__c WHERE Name=:inputName];
        return locations[0];
    }
    
    @AuraEnabled
    public static ITOP_Location__c addEmployeeToLocation(Id inputLocation){
        ITOP_Location__c location = [SELECT Id, Name, Employees__c, isOpen__c, status__c FROM ITOP_Location__c WHERE Id=:inputLocation];
        
        Decimal count = location.Employees__c;
        if (count<5){
        	count += 1;
            location.Employees__c = count;
            update location;
        }
        return location;
    }
    @AuraEnabled
    public static ITOP_Location__c subtractEmployeeFromLocation(Id inputLocation){
        ITOP_Location__c location = [SELECT Id, Name, Employees__c, isOpen__c, status__c FROM ITOP_Location__c WHERE Id=:inputLocation];
        
        Decimal count = location.Employees__c;
        if (count>1){
        	count -= 1;
            location.Employees__c = count;
            update location;
        }
        return location;
    }
    @AuraEnabled
    public static ITOP_Location__c toggleOpenAtLocation(Id inputLocation){
        ITOP_Location__c location = [SELECT Id, Name, Employees__c, isOpen__c, status__c FROM ITOP_Location__c WHERE Id=:inputLocation];
        Boolean openStatus = !location.status__c;
        location.status__c = openStatus;
        update location;
        return location;
    }
    @AuraEnabled
    public static ITOP_Ticket__c updateTicketNotes(Id inputId, String inputNotes){
        ITOP_Ticket__c ticket = [SELECT Id, 
                                        Name, 
                                        Request__r.Related_Primary__r.Name, 
                                        Request__r.Related_Secondary__r.Name,
                                        Request__r.Related_Device_Type__r.Name,
                                        Request__r.Description__c, 
                                        CreatedBy.Name, Notes__c, 
                                        isPriority__c, Status__c 
                                        FROM ITOP_Ticket__c
                                		WHERE Id=:inputId];
        ticket.Notes__c = inputNotes;
        update ticket;
        return ticket;
    }
    @AuraEnabled
    public static ITOP_Ticket__c openCurrentTicket(Id inputId){
        ITOP_Ticket__c ticket = [SELECT Id, 
                                        Name, 
                                        Request__r.Related_Primary__r.Name, 
                                        Request__r.Related_Secondary__r.Name,
                                        Request__r.Related_Device_Type__r.Name,
                                        Request__r.Description__c, 
                                        CreatedBy.Name, Notes__c, 
                                        isPriority__c, Status__c 
                                        FROM ITOP_Ticket__c
                                		WHERE Id=:inputId];
        ticket.Status__c = 'Open';
        update ticket;
        return ticket;
    }
    @AuraEnabled
    public static ITOP_Ticket__c closeCurrentTicket(Id inputId){
        ITOP_Ticket__c ticket = [SELECT Id, 
                                        Name, 
                                        Request__r.Related_Primary__r.Name, 
                                        Request__r.Related_Secondary__r.Name,
                                        Request__r.Related_Device_Type__r.Name,
                                        Request__r.Description__c, 
                                        CreatedBy.Name, Notes__c, 
                                        isPriority__c, Status__c 
                                        FROM ITOP_Ticket__c
                                		WHERE Id=:inputId];
        ticket.Status__c = 'Closed';
        update ticket;
        return ticket;
    }
    
    @AuraEnabled
    public static void transferCurrentTicket(Id ticketId, String locationName){
        ITOP_Ticket__c ticket = [SELECT Id, 
                                        Name, 
                                        isPriority__c, Status__c 
                                        FROM ITOP_Ticket__c
                                		WHERE Id=:ticketId];
        ITOP_Location__c location = [SELECT Id, Name FROM ITOP_Location__c WHERE Name=:locationName];
        ticket.Location__c = location.Id;
        ticket.isPriority__c = true;
        update ticket;
    }
    
    
    @AuraEnabled
    public static List<ITOP_Location__c> fetchOtherLocations(ITOP_Location__c inputLocation){
        List<ITOP_Location__c> otherLocations = [SELECT Id, Name, Employees__c, isOpen__c, status__c 
                                           	FROM ITOP_Location__c
                                                WHERE Id!=:inputLocation.Id];
        return otherLocations;
    }
    
    
    
    
    
    
    
}