public with sharing class ITOP_Controller {
    
    @AuraEnabled
    public static ITOP_Device_Type__c getOther(){
        ITOP_Device__c other = [SELECT Name, Icon__c, Image_Source__c, Description__c FROM ITOP_Device__c WHERE Name='Other'];
        ITOP_Device_Type__c newThing = new ITOP_Device_Type__c();
        newThing.Image_Source__c= formatImageString(other.Icon__c);
        newThing.Name='Other';
        newThing.Description__c = 'If you cannot find your option or no options are appearing, click here to fill out a custom form!';
        return newThing;
    }
    
    private static String formatImageString(String input){
        String src = input.substringBetween('src="', '"');
        String imageFormatting = '<img alt="Object Image" src="' + src + '" style="max-width:100%; max-height:100%;"</img>';
        return imageFormatting;
    }
    
    @AuraEnabled 
    public static List<ITOP_Request_Primary_Option__c> getPrimaryOptions(){
        List<ITOP_Request_Primary_Option__c> options = [SELECT Name, Icon__c, Image_Source__c, Description__c, Question__c FROM ITOP_Request_Primary_Option__c
                                                       WHERE Name!='User-Entered'];
        for (ITOP_Request_Primary_Option__c op: options){
            
            String image = op.Icon__c;
            String src = image.substringBetween('src="', '"');
            String finale = '<img alt="' + op.Name + '" src="' + src + '" style="max-width:100%; max-height:100%;"</img>';
            op.Image_Source__c = finale;
            String temp = String.valueOf(op.Id) ;
            temp = temp.subString(0,15);
            op.Id = Id.valueOf(temp);
        }
        return options;
    }
    
    @AuraEnabled
    public static List<ITOP_Request_Secondary_Option__c> getSecondaryOptions(){
      	List<ITOP_Request_Secondary_Option__c> options = [SELECT Id, Name, Icon__c, Image_Source__c, Description__c, Primary_Descriptor__r.Id
                                                          FROM ITOP_Request_Secondary_Option__c
                                                          WHERE Name!='User-Entered'
                                                          ];
        
        for (ITOP_Request_Secondary_Option__c op: options){
            op.Image_Source__c = formatImageString(op.Icon__c);
        }
        return options;  
    }

    @AuraEnabled
    public static List<ITOP_Device_Type__c> getDeviceTypes(){
        List<ITOP_Device_Type__c> types = [SELECT Name, Id, Icon__c, Image_Source__c, Description__c FROM ITOP_Device_Type__c WHERE Name!='User-Entered'];
        for (ITOP_Device_Type__c each : types){
            each.Image_Source__c = formatImageString(each.Icon__c);
        }
        return types;
    }
    
    
    @AuraEnabled
    public static List<ITOP_Location__c> getAllLocations(){
        //get devices where the primary option is available
        List<ITOP_Location__c> locations = [SELECT Id, Name, Image_Source__c, Total_Ticket_Time__c, Wait_Time__c, Employees__c, Description__c, isOpen__c, status__c, Summary__c
                                            FROM ITOP_Location__c
                                           	];
		return configureLocationImages(locations);
    }
    public static List<ITOP_Location__c> configureLocationImages(List<ITOP_Location__c> locations){
        for (ITOP_Location__c location : locations){
            Double waitTime = location.Wait_Time__c;
            if (location.status__c){
                if (waitTime < 10){
                    location.Image_Source__c = '<div style="width:100%; height:100%; background-color:#00ff00; font-size:30px; display:flex; justify-content:center; align-items:center; color:#303030;"> <h1>' + location.Wait_Time__c + 'min.</h1>   </div>';
                }else if (waitTime <= 15){
                    location.Image_Source__c = '<div style="width:100%; height:100%; background-color:#ffff00; font-size:30px; display:flex; justify-content:center; align-items:center; color:#303030;"><h1>' + location.Wait_Time__c + 'min.</h1> ';
                }else{
                    location.Image_Source__c = '<div style="width:100%; height:100%; background-color:#ff0000; font-size:30px; display:flex; justify-content:center; align-items:center; color:#303030;"><h1>' + location.Wait_Time__c + 'min.</h1> ';
                }
            }else{
                    location.Image_Source__c = '<div style="width:100%; height:100%; background-color:#ff0000; font-size:30px; display:flex; justify-content:center; align-items:center; color:#303030;"><h1>Closed</h1> ';
            }
        }
        return locations;
    }
    
    @AuraEnabled
    public static List<ITOP_Location__c> getLocations(ITOP_Request_Primary_Option__c primary){
        List<ITOP_Location__C> locations = [SELECT Id, Name, Image_Source__c, Total_Ticket_Time__c, Wait_Time__c, Employees__c, Description__c, isOpen__c, status__c, Summary__c
                                           	FROM ITOP_Location__c
                                            WHERE Primary_Request_Types__c includes (:primary.Name)
                                           	];
        
        return configureLocationImages(locations);
    }
    
    

    


	@AuraEnabled
    public static void submitTicket(ITOP_Request_Primary_Option__c primary,  ITOP_Request_Secondary_Option__c secondary,  ITOP_Device_Type__c inputType, ITOP_Location__c location,  String descriptionText){
		ITOP_Request__c newRequest = new ITOP_Request__c();
        newRequest.Related_Primary__c = truncateId(primary.Id);
        newRequest.Related_Secondary__c = truncateId(secondary.Id);
        newRequest.Related_Device_Type__c = truncateId(inputType.Id);
        newRequest.Description__c = descriptionText;
        insert newRequest;
        ITOP_Ticket__c newTicket = buildNewTicket(newRequest, location);   
		insert newTicket;    
    }

    private static ITOP_Ticket__c buildNewTicket(ITOP_Request__c request, ITOP_Location__c location){
        ITOP_Ticket__c ticket = new ITOP_Ticket__c();
        ticket.Status__c='Requested';
        ticket.Priority_Level__c=1;
        ticket.Location__c = truncateId(location.Id);
        ticket.Request__c = truncateId(request.Id);
        return ticket;
    }
    private static String truncateId(Id input){
        return String.valueOf(input).substring(0,15);
    }
    
	
    //sum of all estimated time in tickets at each location
    
    
    private static ITOP_Ticket__c calculateWaitTime(ITOP_Ticket__c ticket){
        Id locationId = ticket.Location__c;
        ITOP_Location__c location = [SELECT Id, Employees__c FROM ITOP_Location__c WHERE Id=:locationId];
        List<ITOP_Ticket__c> competingTickets = [SELECT 
                                                Estimated_Time__c
                                                FROM ITOP_Ticket__c
                                                WHERE Location__r.Id=:locationId
                                                AND Name<:ticket.Name
                                                AND isPriority__c=true];
        Decimal totalCompetingWaitTime = 0;
        for (ITOP_Ticket__c ect : competingTickets){
            totalCompetingWaitTime += ect.Estimated_Time__c;
        }
        Decimal estimatedWaitTime = totalCompetingWaitTime/location.Employees__c;
        ticket.Estimated_Wait_Time__c = estimatedWaitTime;
        update ticket;
        return ticket;
    }
    
    
    
    
    
    
    
    
    
    
    
}