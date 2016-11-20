<aura:application access="global" controller="ITOP_Controller" >
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    
    
    <aura:attribute name="Locations" type="sObject[]" />
    <aura:attribute name="Tickets" type="sObject[]"/>
    <aura:attribute name="Location" type="String" default="LCC - Store"/>
    <aura:attribute name="selectedTicket" type="sObject"/>
    <aura:handler name="change" value="{!v.selectedTicket}" action="{!c.updateTicket}"/>
    
    <div class="nav">
        <h1><Strong>Lilly </Strong>| IT On-Point! | <em>Ticket Management System</em>{!v.selectedTicket.Status__c}</h1>
    </div>
    <div class="container">
    	<div class="body">
        	<div class="header">
            	<h1>IT On-Point Location: </h1>
                <ui:inputSelect class="dynamic dropdown" aura:id="LocationSelect" change="{!c.updateTicketObjects}">
                    <aura:iteration items="{!v.Locations}" var="eachLocation"  >
						<ui:inputSelectOption text="{!eachLocation.Name}" label="{!eachLocation.Name}" value="true" />
                    
                    </aura:iteration>
                    
                </ui:inputSelect>
            </div>
            <div class="content">
                	<aura:iteration items="{!v.Tickets}" var="eachTicket" >
                            <c:ITOP_Ticket_List_Item input="{!eachTicket}" destination="{!v.selectedTicket}" />
                        	
                    </aura:iteration>
                    
            </div>
        </div>
    </div>    
</aura:application>