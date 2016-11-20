trigger ITOP_Location_Name_Configuration on ITOP_Location__c (before insert, before update) {
    ITOP_Location__c currentLocation  = Trigger.New[0];
    currentLocation.Name = currentLocation.Campus_Code__c + ' - ' + currentLocation.Name__c;
}