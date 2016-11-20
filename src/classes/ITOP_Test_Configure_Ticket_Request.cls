@isTest
public class ITOP_Test_Configure_Ticket_Request {
    public static testMethod void testConfigureDate(){
        DateTime dateOne = System.NOW();
        DateTime dateTwo = System.NOW().addHours(3);
        String result = ITOP_Ticket_Request_Configuration.getDateTimeBetween(dateOne,dateTwo);
        String expected = 'days: ' + 0 + ', hours: ' + 3 + 'minutes: ' + 0;
        System.debug(result);
        System.assertEquals(result, expected);
    }
    
    
}