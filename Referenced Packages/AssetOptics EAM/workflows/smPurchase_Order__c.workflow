<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_PO_Desc</fullName>
        <description>Updates the PO Description to the PO # if the Description is Null</description>
        <field>Description__c</field>
        <formula>Name</formula>
        <name>Update PO Desc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_RecordType_Picklist</fullName>
        <description>Updates the Purchase Order Record Type Picklist Value (to be used in a workflow process when the underlying recordtype is updated).</description>
        <field>PO_Record_Type__c</field>
        <literalValue>Purchase Order</literalValue>
        <name>Update PO Record Type Picklist</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Recordtype_to_Order</fullName>
        <description>Updates the Purchase Order Recordtype (not the Picklist) to Order.</description>
        <field>RecordTypeId</field>
        <lookupValue>Order</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update PO Recordtype to Order</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Approved</fullName>
        <description>Updates the Purchase Order Status to Approved</description>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update PO Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Canceled</fullName>
        <description>Updates the Purchase Order Status to Canceled</description>
        <field>Status__c</field>
        <literalValue>Canceled</literalValue>
        <name>Update PO Status to Canceled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Closed</fullName>
        <description>Updates the Purchase Order Status to Closed</description>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Update PO Status to Closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Completed</fullName>
        <description>Updates the Purchase Order Status to Completed</description>
        <field>Status__c</field>
        <literalValue>Completed</literalValue>
        <name>Update PO Status to Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_In_Progress</fullName>
        <description>Updates the Purchase Order Status to In Progress</description>
        <field>Status__c</field>
        <literalValue>In Progress</literalValue>
        <name>Update PO Status to In Progress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Ready_to_Release</fullName>
        <description>Updates the Purchase Order Status to Ready to Release</description>
        <field>Status__c</field>
        <literalValue>Ready to Release</literalValue>
        <name>Update PO Status to Ready to Release</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Rejected</fullName>
        <description>Updates the Purchase Order Status to Rejected</description>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update PO Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Released</fullName>
        <description>Updates the Purchase Order Status to Released</description>
        <field>Status__c</field>
        <literalValue>Released</literalValue>
        <name>Update PO Status to Released</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Status_to_Waiting_Approval</fullName>
        <description>Updates the Purchase Order Status to Waiting Approval</description>
        <field>Status__c</field>
        <literalValue>Waiting Approval</literalValue>
        <name>Update PO Status to Waiting Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_City</fullName>
        <description>Updates the Shipping City with the Storeroom City</description>
        <field>Shipping_City__c</field>
        <formula>Storeroom_ID__r.City__c</formula>
        <name>Update Shipping City</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Country</fullName>
        <description>Updates the Shipping Country to the Storeroom Country</description>
        <field>Shipping_Country__c</field>
        <formula>Storeroom_ID__r.Country__c</formula>
        <name>Update Shipping Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_State</fullName>
        <description>Updates the Shipping State with the Storeroom State</description>
        <field>Shipping_State_Province__c</field>
        <formula>Storeroom_ID__r.State_Province__c</formula>
        <name>Update Shipping State</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Street</fullName>
        <description>Updates the Shipping Street Address with the Storeroom Street Address</description>
        <field>Shipping_Street__c</field>
        <formula>Storeroom_ID__r.Street__c</formula>
        <name>Update_Shipping_Street</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_ZIP</fullName>
        <description>Updates the Shipping Zip/Postal Code to the Storeroom Zip/Postal Code</description>
        <field>Shipping_Zip_Postal_Code__c</field>
        <formula>Storeroom_ID__r.Zip_Postal_Code__c</formula>
        <name>Update Shipping ZIP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update PO Desc if Null</fullName>
        <actions>
            <name>Update_PO_Desc</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Auto Populates the Description of a Purchase Order if Null</description>
        <formula>ISBLANK( Description__c )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Updates Shipping Address</fullName>
        <actions>
            <name>Update_Shipping_City</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_State</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Street</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_ZIP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Shipping Address to Storeroom Address</description>
        <formula>NOT( ISBLANK( Storeroom_ID__c ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
