<aura:application controller="ITOP_Ticket_Manager_Controller">
    <aura:attribute name="locations" type="sObject[]"/>
    <aura:attribute name="tickets" type="sObject[]"/>
    <aura:attribute name="location" type="sObject"/>
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    <aura:attribute name="warning" type="String" default="Please select/click a location."  />  
    <aura:attribute name="otherLocations" type="sObject[]"/> 
    <aura:attribute name="triggerValue" type="String"/>
    <aura:handler name="change" value="{!v.triggerValue}" action="{!c.updateTickets}"/>
    
    
    <div class="nav">
        <h1><Strong>Lilly </Strong>| IT On-Point! | <em>Ticket Management System</em></h1>
    </div>
    
    <div aura:id="topHeader" class="header" onclick="{!c.showTop}">
        
    	<h1>IT On-Point Location:
            <ui:inputSelect class="dropdown" aura:id="locationSelection" change="{!c.changeLocation}" select="{!c.changeLocation}">
                <aura:iteration items="{!v.locations}" var="eachLocation"  >
                    <ui:inputSelectOption text="{!eachLocation.Name}" label="{!eachLocation.Name}"  />
                </aura:iteration>
            </ui:inputSelect>
        </h1>
        <table aura:id="locationTable" class="hidden">
        	<tr>
            	<td><h2>Number of Employees:</h2></td>
                <td>
                    <button type="button" onclick="{!c.subtractEmployee}">-</button>
            		<h3>{!v.location.Employees__c}</h3>
            		<button type="button" onclick="{!c.addEmployee}">+</button>
                </td>
            </tr>
            <tr>
                <td><h2><ui:outputText value="{!v.location.status__c ? 'Location Open' : 'Location Closed'}"/></h2></td>
                <td id="spacedTd" ><button id="closeOpen" type="button" onclick="{!c.toggleOpen}">{!v.location.status__c ? 'Close' : 'Open'}</button></td>
            </tr>
        </table>
                <h1 class="warning" aura:id="warning">Please select/click a location.</h1>

    </div>
    
    <div class="body" onclick="{!c.hideTop}">
        <h1 class="refresh" onclick="{!c.refresh}">refresh</h1>
        <div class="container">
    		<aura:iteration items="{!v.tickets}" var="eachTicket" >
                <c:ITOP_Ticket_List_Item inputLocations="{!v.locations}" input="{!eachTicket}" destination="{!v.triggerValue}" />
            </aura:iteration>
    	</div>
    </div>
    
    
</aura:application>