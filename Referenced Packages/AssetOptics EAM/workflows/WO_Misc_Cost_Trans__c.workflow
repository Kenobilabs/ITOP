<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_WO_Misc_Cost_Actual</fullName>
        <description>Updates the value in Work Order Misc Cost Actual Amount</description>
        <field>Actual_Misc_Cost_Amount__c</field>
        <formula>WO_Misc_Cost__r.Actual_Misc_Cost_Amount__c  +  Actual_Trans_Amount__c</formula>
        <name>Update WO Misc Cost Actual</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>WO_Misc_Cost__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Update WO Misc Cost Actual</fullName>
        <actions>
            <name>Update_WO_Misc_Cost_Actual</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>WO_Misc_Cost_Trans__c.Actual_Trans_Amount__c</field>
            <operation>notEqual</operation>
            <value>EUR 0</value>
        </criteriaItems>
        <description>Updates the Value of Work Order Misc Cost Actual Amount when a record is entered into Work Order Misc Cost Trans</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
